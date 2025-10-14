#!/bin/bash

USERNAME="bella"
HomeDir="/home/$USERNAME"
PUB_KEYS="public_keys.txt"
CIDR="192.168.1.0/24"
PROJECT_DIR="/srv/apps/project"
if id $USERNAME &>/dev/null ;then
	echo "User $USERNAME already exists"
	exit 0
fi

useradd -m -d "$HomeDir" -s /usr/sbin/nologin $USERNAME

passwd -l $USERNAME

#SSH KEYS
SSH_DIR="$HomeDir/.ssh"
KEYS="$SSH_DIR/keys"
mkdir -p "$SSH_DIR"
chmod 700 $SSH_DIR
chown $USERNAME:$USERNAME "$SSH_DIR"

while IFS= read -r key;
do
	echo "no-port-forwarding,no-X11-forwarding,no-agent-forwarding,from=\"$CIDR\" $key" >> $KEYS
done < $PUB_KEYS

chmod 700 $KEYS
chown $USERNAME:$USERNAME $KEYS

setfacl -m u:$USERNAME:rwx $PROJECT_DIR

for dir in /home/*;
do
	if [[ $dir != "/home/$USERNAME" ]];then
		setfacl -m u:$USERNAME:0  "$dir"

	fi
done

CMD="/usr/local/bin/run_app"
SUDOER_RULES="/etc/sudoers.d/$USERNAME"
echo "$USERNAME ALL=(ALL) NOPASSWD:$CMD" > $SUDOER_RULES

if visudo -c -f "$SUDOER_RULES";then
	echo "Valid File\n"
else
	echo "Invalid file\n"
	rm $SUDOER_RULES
	exit 1
fi

SSHD_CONFIG="/etc/ssh/sshd_config"
BU="$SSHD_CONFIG.backup"

cp "$SSHD_CONFIG" "$BU"

echo "" >> "$SSHD_CONFIG"  
echo "# Restrict SSH access for $USERNAME" >> "$SSHD_CONFIG"
echo "Match User $USERNAME" >> "$SSHD_CONFIG"
echo "    ForceCommand $CMD" >> "$SSHD_CONFIG"
echo "    AllowTCPForwarding no" >> "$SSHD_CONFIG"
echo "    X11Forwarding no" >> "$SSHD_CONFIG"
echo "    PermitTTY no" >> "$SSHD_CONFIG"
echo "    PermitOpen none" >> "$SSHD_CONFIG"

if sshd -t; then
    echo "SSH config is valid\n"
    systemctl reload sshd
else
    echo "SSH config is invalid\n"
    cp "$BACKUP" "$SSHD_CONFIG"
    systemctl reload sshd
    exit 1
fi
