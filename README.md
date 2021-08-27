# Common Bash Scripts 
![](https://img.shields.io/github/repo-size/Yttrium-Terminus/common_scripts?style=flat-square) ![](https://img.shields.io/github/issues-raw/Yttrium-Terminus/common_scripts?style=flat-square) ![](https://img.shields.io/reddit/subreddit-subscribers/chromeos?style=flat-square) ![](https://img.shields.io/github/last-commit/Yttrium-Terminus/common_scripts)
___

These are some bash scripts to help to add a bit of "user-friendliness" when using certain functions within a Linux environment. 

I will try to comment and explain what each piece of command does in order to keep everything public and open.

Note: I mostly dedicated this repository and these scripts to the users of ChromeOS whom can have trouble installing certain applications. However, most of these scripts
should work well in compatibility with other Debian-based flavors.

# How to use

**Step 1:** Download the appropriate file for the required action

**Step 2:** Launch your terminal (if necessary as some distros can simlply run a script by clicking on it), then if needed, `cd <directory of file>` 

**Step 3:** Use the command `bash <file>.sh` or `./<file.sh>` within your terminal then follow instructions of that script

# Additional Notes

This repository's scripts primarily uses the `apt` packager to install and handle tasks, but I will gladly incorporate the installation or usage of other packagers if necessary or if perferred by the user.

# Risks

Please note, if you are using an unsupported architecture, you should take extreme caution when using the commands within the code by simply copying and pasting them into your terminal.

[FOR MOST SCRIPTS] The scripts are intended to exit when an architecture of `ARM` is detected. This for your system's integrity, and the authors of the script(s) will take no responsibility if the program installed or installing crashes your system due to an unsupported architecture.

# Planned

**Here are things that I plan on to add to this repo and the scripts within:**

1. A wrapper or manager for users to easily install it and then can easily use this program to install applications without having to run the scripts manually.
2. Make all programs that are installed be instantly launched
