# Showing Where You Are

**Command:** `pwd` — *Print Working Directory*

- `pwd` stands for **print working directory** and takes two options:
  - `-L`: Displays your **logical path** (default)
  - `-P`: Displays your **physical location**, which may differ if you've followed a symbolic link.

> 💡 **NOTE:** Using the `"help me"` argument will give you help if you don’t provide any arguments.

---

# Finding and Running Commands

### 1) `type` — Built-in Command

- Searches your environment (aliases, keywords, functions, built-ins, and files in `$PATH`) for executable commands matching its arguments.
- Displays the **type and location** of any matches.

> 🔍 **NOTE:** Use the `-a` flag to print **all matches** instead of stopping at the first one.

---

### 2) `which` — Command Locator

- Searches only your `$PATH` for the command.

> 🔍 **NOTE:** Often supports the `-a` flag like `type`.

---

### 3) `apropos` — Manual Page Search

- Searches **manpage names and descriptions** for regular expressions supplied as arguments.
- Very useful when you **don’t remember the exact name** of the command you need.

---

### 4) `locate` — File Search Utility

- Used for **fast file searching**.
- Creates a **database of file locations** for quicker results.

> 📚 **Reference:** [GeeksforGeeks: slocate command in Linux](https://www.geeksforgeeks.org/linuxn <command>` to read the manual page for any command.
- Try `command --help` for quick usage instructions.
- To update the `locate` database, use: `sudo updatedb`

---

