# Showing where you are
pwd:print working directory
(pwd stands for print working directory and takes two options. -L displays your logical path and is the default& -P displays your physical location, which may differ from
your logical path if you have followed a symbolic link.)

NOTE: “help me” argument:  will give you help if you don’t give them arguments
# Finding and Running Commands
1) built-in 'type` command searches your environment (including aliases, keywords, functions, built-ins, and files in the $PATH) for
executable commands matching its arguments and displays the type and location of
any matches. 

NOTE: -a flag, which causes it to print all
matches instead of stopping at the first one

2) which command : only searches your $PATH
NOTE : usually has a -a flag like type

3) apropos : searches manpage names and descriptions for regular expressions supplied as arguments
NOTE: y useful when you don’t remember the name of the command you need

4) locate command: used for file searching, similar to locate command it creates a database of the file locations for faster searching
   for more reference: []!(https://www.geeksforgeeks.org/linux-unix/slocate-command-in-linux-with-examples/)
