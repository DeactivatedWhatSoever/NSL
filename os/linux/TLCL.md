# TLCL


## Introduction

### Freedom comes from knowledge. And that’s what Linux as all about. You have to know what your computer does, that’s how you can control what your computer can do. 

### Why Use The Command Line?

- Well, when I read this section, the most greatest thing that struck my head was this saying: “The GUI can make easy tasks easy but the CLI can make hard tasks possible.”

### What This Book Is About

- This book is about the linux command line. How to “live” in it. Not some system administration stuff. Well I think this book will give me solid fundamentals for studying that topic. 

### Who Should Read This Book

- Me. Someone who wants to live in the computer that I know about :)

### What’s In This Book

- The parts below. Look at the overall tree and you’ll get it!

### How To Read This Book

- Just read it as it follows. It’s not a reference book.

## Part 1 - Learning The Shell

### What Is The Shell?

- Terminal Emulators

	- Didn’t know that terminals needed emulators. But they actually do to actually communicate with the shell. iTerm is a good example of a terminal emulator.

- Your First Keystrokes

	- The shell keeps a history of 1000 commands by default.

- Try Some Simple Commands

	- date: displays current time and date.

	- cal: displays a calendar! 

	- df: see the current amount of free space.

	- free: displays the amount of free memory.

- Ending A Terminal Session

	- exit

- Summing Up

- Further Reading

	- [Steve Bourne](http://en.wikipedia.org/wiki/Steve_Bourne)

	- [Shell](https://en.wikipedia.org/wiki/Shell_(computing))

### Navigation

- Understanding The File System Tree

	- Didn’t know that windows had separate file systems for each disk. More on Linux, where it just ‘mounts’ the disk! It’s always one directory tree. Remember that it’s a tree

- The Current Working Direcoty

	- The place that we’re in is called the current working directory. That’s why pwd stands for “print working directory”.

- Listing The Contents Of A Directory

	- The ls command lists all the other stuff in the working directory. But we can do way more with this guy. (You’ll learn more after in the chapters)

- Changing The Current Working Directory

	- Absolute Pathnames

		- From the root directory!

	- Relative Pathnames

		- From the working directory!

	- “.” Notation: Refers to the working directory. “..” Notation: Refers to the working directory’s parent.

		- You can omit the “.” Notation if you just want to change into a directory in the working directory.

	- Linux has no concept of “file extension”. Why? Many application programs determine the content by its extensions but Linux doesn’t. It has it’s own standards and means to determine the contents/purposes of files. The ‘file’ command will do the rest!

- Summing Up

	- Learning relative and absolute. Also learned that linux doesn’t treat the files of its contents with extensions. 

### Exploring The System

- More Fun With ls

	- I saw there are a lot of options for ls! The best one that I got was the -h option. Human readable! Also sorting with size, modification date, and reversing the sort!   I think I should take a look of man ls.

	- We need to take a look a bit more about the ls -l -> Long format!

		- I saw the things about permissions. d, - -> Directory or file. Execute, write, read. These are the permissions that you can have for a file or directory. I wonder what it means to execute a directory? 

			- Can’t believe it man! Permissions for directories.  x -> You can access the directory w -> You can make other things in the directory r -> You can list the contents in the directory.

		- Hard links and soft links. Gotta find out the differences later in the chapters!

	- Determining A File’s Type With file

		- Remember that Linux treats everything as a file. I need to keep this in mind and read the book.

	- Viewing File Contents With less

		- Less is a text reader. I can’t believe that this guy was actually more. Lol! They say it comes from the old saying, “less is more”. 

		- Didn’t know that ASCII was a real important component in Linux. All the data traded for text is mostly written in ASCII. 

			- You should better know what ASCII is. A charset or an encoding type. 

	- A Guided Tour

		- Take a look at the Linux Filesystem Hierarchy Standard.

			- Questions in /bin

				- What is binary exactly?

			- Questions in /boot

				- What exactly does sticky mean? The s inside the permissions information.

			- Questions in /dev

				- What is tty?

				- What is character special? The c inside the permissions information.

				- What is a t? Inside the permissions information

				- What is a loop?

				- Instead of just questioning about the permissions that I’ve never heard of, lets just go and search for all of them at once. I’m pretty sure that there’ll be a great list that shows all of that.

			- Questions in /etc

				- Wish to know the important applications that are in this file. This guy has system wide configuration files in it!

			- When I saw the /media directory, I noticed that I needed to know the notion of ‘mount’. Whether what mount really means in the Linux era.

				- The /mnt directory is the old /media.

			- The /opt directory is for “optional” software. That’s why people put in tomcat over here!

			- /proc -> I think this directory tells me that it’s proctor. It lets me see how the kernel looks at the computer. The kernel manages this directory! 

			- The /bin has system wide using binary executables, and /sbin is for system administration binaries. 

			- Didn’t know that the /usr directory would have so many things in it. Locale, sbin, bin, share, etc. These things are the same but more user oriented. 

			- /var -> The place where data that always change lives. Like logs, database storage, html files, website, etc.

	- Symbolic Links

		- Links. This way we can link files together. Lets say there’s a file that always changes names. And it’s an executable. If that file keeps on changing, it will be really hard for us to find that file. So we link it to another file name! Then we will only need to know the linked file. That’s it!

	- Hard Links

		- Does the same thing with symbolic links, but in another way. We’ll see this guy later.

	- Summing Up

	- Further Reading

		- The full version of the Linux Filesystem Hierarchy Standard can be found here: http://www.pathname.com/fhs/

		- An article about the directory structure of Unix and Unix-like systems: http://en.wikipedia.org/wiki/Unix_directory_structure

		- A detailed description of the ASCII text format: http://en.wikipedia.org/wiki/ASCII

### Manipulating Files And Directories

- Wildcards

	- Thought wildcards only meant *. But well, it doesn’t. You can put in wildcards inside filenames, well commands that accept filenames. *, ?, [abc], [:digit:], etc. 

- mkdir - Create Directories

- cp - Copy Files And Directories

- mv - Move And Rename Files

- rm - Remove Files and Directories

	- There’s no such thing as an undelete command! You can’t undo it! Linux assumes you are smart enough to understand what you’re doing.

	- Always check what you are going to delete. With ls, and wildcards whatsoever.

- ln - Create Links

	- Hard link - ln

		- It can’t be linked with a directory.

		- It can’t reference a file outside its file system. For example, it can’t reference mounted devices? I guess.

		- Hard links actually make the same file. You can check whether they are the same or not by ls -i. The inode will be the same.

	- Soft link (Symbolic link) - ln -s

		- If you delete the link itself, then the file will remain. But if you delete the file that is linked, the link will become a broken link. Which means it will be useless.

		- Yep, this guy does the trick to overcome the disadvantages of hard links. 

- Summing Up

- Further Reading

	- A discussion of Symbolic Links: [https://en.wikipedia.org/wiki/Symbolic_link](https://en.wikipedia.org/wiki/Symbolic_link)

### Working With Commands

- What Exactly Are Commands?

	- An executable program

	- Bultin shell command

	- Shell function

	- Aliases that we define

	- Why just these? Obviously all the executable things are going to be binary in my perspective. I don’t know about shell function, but still they are somewhat going to be defined as a binary. 

- Identifying Commands

	- You can identify commands by its type with the ‘type’ command.

	- Display an executables location with the ‘which’ command.

- Getting A Command’s Documentation

	- Well you can only use the ‘help’ command to get help from builtin shell commands! I also tried man on it but it doesn’t work!

	- Don’t know why the -.-help option isn’t supported for some commands. But still, just give it a try! -h or that.

	- Most commands have a manual. And that is accessed by the ‘man’ command!

	- aprops == man -k

		- This lets you search the list of man pages by the search keyword you typed.

	- Display a very brief description of a command with ‘whatis’

	- Display a program’s info entry with the ‘info’ command.

		- It’s an alternative of the man command from the GNU project. 

- Creating Your Own Commands With alias

	- alias command_name=‘The Commands!’

		- To unaries, type unaries!

- Summing Up

- Further Reading

	- [The Bash Reference Manual](http://www.gnu.org/software/bash/manual/bashref.html)

	- [The Bash FAQ](http://mywiki.wooledge.org/BashFAQ)

	- The GNU packages! The [manual](http://www.gnu.org/manual/manual.html)! I think the coreutils commands will be all listed here.

	- [Man Page Wiki](http://en.wikipedia.org/wiki/Man_page)

### Redirection

- Before we go in, I think this chapter will be about passing around text, piping, and writing it on files. Getting input, and showing output. The commands that we’re going to use are cat, sort, uniq, grep, wc, head, tail and tee.

- Standard Input, Output, And Error

	- Can’t believe that even standard output, standard error, standard input are also files! Since linux treats everything as a file, this is possible. But why doesn’t it get saved on disk? Maybe plain text or whatever. I could make one log everything but I don’t think that’s a good practice. If we record all of that, that file will become substantially big. 

		- Standard output is actually linked with output devices like the monitor.  And the standard input is mostly the keyboard. But with redirection, we can change this!

- Redirecting Standard Output

	- Can’t believe the ‘>’ operator was redirecting of standard output lol. Well anyway, when we have output, like this ls command, the output will be written to the file that you’re redirecting with >. But there’s sometimes when there’s no output. No standard ‘output’. That’s because of the standard error. 

		- Standard error usually comes out from errors like command not found, or actual errors from the command line programs! When there’s standard error, there’ll be an empty file. But when you redirect the standard error with >>, you’ll get some output in the file you specify.

- Redirecting Standard Error

	- To redirect standard error, you use >>, or 2> notations. You can also put in standard error and standard output messages into one file by using ‘> filename 2>&1’ notation. Some shells will give better ways to do this like ‘&>’

		- I heard about the ‘/dev/null’ directory over here. It was actually a culture. They call it a bit bucket. It only accepts input and it goes away. I think it’s actually the trash can lol. 

- Redirecting Standard Input

	- Well I learned redirecting standard input with the ‘cat’ command. I didn’t know that the arguments were actually standard input. If you don’t put any arguments in, it will hang and try to get input from the keyboard. Also, if we use the ‘<‘ notation, we can actually hand along the file for standard input!

- Pipelines

	- The pipeline actually is pretty cool! It’s the ‘|’ operator and helps you redirect command outputs to each other. That’s why I always used ps -ef | grep tomcat. You get it? You grep the output from the ps -ef command! 

		- You have to know the difference between the | operator and the > operator. If you > with commands, it will absolutely destroy your command systems sometimes. > is for putting in files as an input for commands. Not for putting commands because > will treat the command as a file and that command will get destroyed.

- Filters

	- Sort -> Just sorts it! Have a go with the man some time when you need it.

	- Uniq -> Report Or Omit Repeated Lines  Yep, you can just see what is repeated or actually just omit them. I bet it will get handy sometime.

	- Wc -> This dude prints lines, word, and byte counts. It’ll get pretty useful when you really need some file manipulation! 

	- Grep -> Print lines matching a pattern. Well, the pattern can be just plain text, but to use grep powerful, you need to know regular expressions. It also helps you do ‘do not match’ finding!

	- Head / tail -> Print first / last parts of files. Yep, I bet these commands are used just for peeking inside. But for tail, we use that for a whole lot for log watching.

		- /var/log/messages has a lot of system messages. I think you should take a look inside there sometime.

	- Tee -> Read from Stdin and Output to Stdout and Files  Yeah, I think it’s pretty much the same with cat but it’s a good combination with the pipe operator. Remember, this is the ‘filter’ section. It will filter the results of a stdin or output to stdout or files. So it will be used usefully if you want to save a file before filtering with grep or anything like that.

- Summing Up

	- Windows vs Linux. Remember the Gameboy and Erector Set analogy. It will tell everything!

### Seeing The World As The Shell Sees It

- Expansion

	- How does the shell interpret wild cards in commands?

		- I think this is about something with expansions. You see, before the command is executed, I think this so called ‘expansion’ expands the things that we wrote down. For example, if we put in $PATH, that means it’ll actually get the path and then print it! -> If we did it with echo.

	- Pathname Expansion

		- The mechanism of the wildcards is actually pathname expansion.

		- It expands the filenames! With the wildcards.

	- Tilde Expansion

		- Didn’t know people called the ‘~’ notation tilde.

	- Arithmetic Expansion

		- The shell prompt can be used as a calculator. Like a REPL! For example: echo $((2 +2 ))

			- For a more general way:  $((expression)) -> like this.

		- Didn’t know arithmetic meant something like the old four ways to compute. 

	- Brace Expansion

		- Brace operations are cool! Don’t know how to actually define this but, it does iterations for you. {a..z}, {1..5} for instance. It will print those parts repeatedly! On the echo command of course.

		- I think there’ll be a place that tells what you can do with the brace expansion. But the example that I saw on the book was making files in chronological date order. Mkdir {2007..2009}-{01..12} -> Like this!

	- Parameter Expansion

		- Well, this can be used in the command line for just putting out the actual value. Parameter expansion is what I think, variables! Environment variables like $PATH. 

			- Good for printing, but I think it will be used way more better in shell scripting.

		- To look at all your environment variables, use the ‘printenv’ command.

	- Command Substitution

		- $(command) -> is something that gives back a executed, delegated results! $(ls) will give you the results of the command, and you do another ls on top of that, it will give you a list of lists!

		- It’ll sure be useful when I know what arguments I want to put in a certain command.

- Quoting

	- Double Quotes

		- Double quotes will let you use special characters like $ in the commands, but it still will interpret parameter, arithmetic, and command substitution.

	- Single Quotes

		- If we need to suppress all the expansions, we use single quotes! It’ll just print out everything we want! 

	- Escaping Characters

		- Yeeep, escaping characters. Everywhere in programming. Even when you use double quotes, you can escape em with \. \a, \b, \n, \r, \t etc.

- Summing Up

- Further Reading

	- Well the bash reference manual contains all the stuff over in this chapter. [Here!](http://www.gnu.org/software/bash/manual/bashref.html)

### Advanced Keyboard Tricks

- Command Line Editing

	- Cursor Movement

		- If we type in the command line, there are some places that we want to go. For example, the beginning, the end, one word, clearing the screen, etc.

			- Ctrl-a(alphabet a? Beginning?) Ctrl-e(end?) Ctrl-f(forward) Ctrl-b(backward) Alt-f,b(one word! Why alt?) Ctrl-l clear the screen!

	- Modifying Text

		- Deleting characters, exchanging with others, converting words to upper or lower case.

	- Cutting And Pasting (Killing And Yanking) Text

		- Killing is cut and Yanking is paste. Ctrl u and Ctrl k I think. The pasting was Ctrl y. Yank!

	- Completion

		- The tab interface! Tab for auto completion! Alt-* for all possible stuff. But I’m not finding what the ‘meta’ key in Mac is. It doesn’t seem to work like Linux.

			- How do completion work? Where does the completion actually get searched?

- Using History

	- Searching History

		- Using less and grep!

		- !88 -> Cool…. Execute the 88th command in history.

		- Using ctrl-s or ctrl-r -> You can search history! Also, if you want to copy the command, then use ctrl-j. Last, if you want to get more results, then press ctrl-r

	- History Expansion

		- Use !! And you’ll execute the previous command!

		- !string -> Execute something starting with this, !?string -> something containing!

		- script -> This command outputs all the commands into a file in the current shell session.

			- I wonder how the shell session is recorded? What makes a shell session?

- Summing Up

- Further Reading

	- Well, there’s a pretty good article on computer terminals in [wikipedia.](http://en.wikipedia.org/wiki/Computer_terminal)

### Permissions

### Processes

## Part 2 - Configuration And The Environment

### The Environment

### A Gentle Introduction To vi

### Customizing The Prompt

## Part 3 - Common Tasks And Essential Tools

### Package Management

### Storage Media

### Networking

### Searching For Files

### Archiving And Backup

### Regular Expressions

### Text Processing

### Formatting Output

### Printing

### Compiling Programs

## Part 4 - Writing Shell Scripts

### Writing Your First Script

### Starting A Project

### Top-Down Design

### Flow Control: Branching With if

### Reading Keyboard Input

### Flow Control: Looping With while / until

### Troubleshooting

### Flow Control: Branching With case

### Positional Parameters

### Flow Control: Looping With for

### Strings And Numbers

### Arrays

### Exotica

