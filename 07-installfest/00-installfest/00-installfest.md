# Install the World! Or at least some package managers!

## Overview

This time is dedicated to ensuring everyone has all of the tools, the right tools, and the right versions of tools to begin programming with the Ada curriculum.

Many of you will have some set of these tools installed, but we're going to go through them together and make sure everyone is set to go.

Follow the steps below, typing any necessary code into the Terminal application.

If you've got pieces installed, help your fellow students!

### About `$`

We will soon see how programming is a combination of _writing code in a text editor_ and _running commands in a console_. Usually, we will write code to create a script, program, or app in a text editor, and then run or execute that script, program, or app in a console.

Because there are two different contexts that programmers type into frequently (text editor and console), in installation guides, tutorials, or documentation, there is sometimes a pretty reliable pattern: **lines of code that start with a `$` usually indicate it should be in the console (Terminal).** **You should not type the literal `$` when copying/pasting/typing that command.**

For example, a guide may say to do `$ pwd` to print the path of the current directory. What you literally do is type `pwd` and enter into the Terminal.

## Xcode Command-Line Tools

Xcode is an **integrated development environment** (often called an **IDE**) for creating apps for Mac, iPhone, and iPad. We don't need it in it's entirety, we're just going to download one piece of the whole. _Command Line Tools_ is a component of Xcode that provides a _compiler_ for OS X.

You can install it with: `$ xcode-select --install` If the command shows a message like `xcode-select: error: command line tools are already installed, use "Software Update" to install updates` then it's installed properly.

If the command does not show a directory path and instead something like `xcode-select: error: unable to get active developer directory, use xcode-select --switch to set one (or see man xcode-select)` you can install it with `$ xcode-select --install` select install and then grab coffee because it will take a bit of time.

## Homebrew

[Homebrew](http://brew.sh/) is a [**package manager**](https://en.wikipedia.org/wiki/Package_manager) that simplifies installing software on macOS. Package managers are very common, and each language/framework/stack tends to have their own or preferred tool.

To install, copypasta this into your terminal:

```bash
$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

You may need to enter your computer password to complete the installation.

### Trust but Verify Brew

Run `brew doctor`. Brew is super great at telling you what else it may need. Sometimes there are file permissions to fix. Sometimes there's a warning that can be ignored. If there's anything ever wrong with Brew, `brew doctor` will usually be able to tell you what it is and how to fix it.

## rbenv

[rbenv](https://github.com/rbenv/rbenv) (**R**u**B**y **ENV**ironment) is a command line tool designed to help developers maintain a production level Ruby Environment on their personal machine. In essence, `rbenv` helps manage all of the extra bits and bobs we add into Ruby through extensions.

Run:
```bash
$ brew install rbenv
$ rbenv install 2.6.5
$ # This will take about a good youtube video.
$ rbenv global 2.6.5
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ echo 'eval "$(rbenv init -)"' >> ~/.zshrc
$ source ~/.bash_profile
$ source ~/.zshrc
$ gem pristine -a
$ # This _might_ take a while, but it might not.
```

## Trust but Verify 

Run:
```bash
$ ruby -v
$ # This should tell us 2.6.5
$ which ruby
$ # /Users/[your-name-here]/.rbenv/shims/ruby
$ which gem
$ # /Users/[your-name-here]/.rbenv/shims/gem
```

## Git

Git is an open source distributed version control system. We will talk about git in significant detail later. The short version is that we will use Git to version and share our code with others. We will spend a lot of time using Git in the Terminal, so it will become important that we configure the Terminal to have all of our Git preferences it and personalize it with our personal information.

### Install with Homebrew

Run the following command to install git onto your machine:

`$ brew install git`

### Configuring Git

We need to do some configuration so Git knows who we are, and so that it gives us colorful feedback. After Brew finishes the install, _read through these directions, **and then** input the commands listed below_:

Directions:
1. Figure out what your name is. We're going to ask you to input a command, and the example command says `"Your Actual Name"`. Instead of the literal text `"Your Actual Name"`, you need to input text that is... your actual name. You should keep the quotation marks.
1. Next, figure out what the email address associated with your GitHub account is. (Yes, you're going to need to remember how to log into your GitHub account). Similar to above, instead of the literal text `"The Email Associated with Your Github Account"`, please put in **the email address associated with your GitHub account.** You should keep the quotation marks.
1. Finally, input the following commands:

```bash
$ git config --global user.name "Your Actual Name"
$ git config --global user.email "The Email Associated with Your Github Account"
$ git config --global core.ignorecase false
$ git config --global color.diff auto
$ git config --global color.status auto
$ git config --global color.branch auto
$ git config --global push.default current
$ git config --global core.editor "code --wait"
```

### Trust but Verify

- `$ git config --get user.name` Should show your name
- `$ git config --get user.email` Should show the email address associated with your GitHub account

## Browsers

We will be using [Firefox](https://www.mozilla.org/en-US/firefox/) as our primary browser at Ada.  You can install it with:

```bash
$ brew cask install firefox
```

You may also want to use Google Chrome, which is also a fine browser.  You can install Google Chrome with Homebrew by typing:

```bash
$ brew cask install google-chrome
```

## It's All About Communication! Slack

Lastly we you should already have Ada's primary mode of communication installed... [**Slack!**](https://slack.com/downloads/osx). While it is **possible** to get by using the Slack website.  We recommend **strongly** to use the Desktop client.  You can install Slack with homebrew and the command:

```bash
$ brew cask install slack
```

When Ada has announcements or students want to share general information, we will generally use Slack.  If we have updates to projects or homework, we will use Slack.  We only use e-mail for personal communication and things we need to keep a record of (like absences).

That being said, please get familiar and comfortable with Slack, and make it your own space to build special-interest channels and discussion spaces.

It's also critically important to use emojis (not really, but it's fun!).  So once you have Slack running follow the directions [**here**](https://get.slack.help/hc/en-us/articles/206870177-Create-custom-emoji) to install a Slack Emoji of your choice.

You can find a great site for Slack Emoji's [**here**](https://slackmojis.com/).

## Note

If for any of these applications you get the following warning.

![Unsigned Application Warning](images/unsigned-app.png)

You can fix it by going to **System Preferences-->Security & Privacy** and selecting the button **Open Anyway**.

![System Preferences](images/systempreferences.png)

![Security & Privacy](images/security-and-privacy.png)

![Open anyway](images/open-anyway.jpg)

## Good Idea - Disable SmartQuotes

The curly quotations that Microsoft Word and other applications can add can be problematic when you copy and paste code into editors.  You can compare “ ”  with " ".  Ruby and most programming languages do not handle the curly quotations that MS word and other applications add.


However you can **turn them off**.  

1.  First go to System Preferences
  ![Find system preferences](images/find-system-preferences.png)  
1.  Then find **keyboard**
  ![Keyboard in system preferences](images/keyboard.png)
1.  Then click on the **text tab**
  ![Text tab](images/text-tab.png)
1.  Then uncheck **Use Smart quotes and dashes**
  ![Uncheck smart quotes](images/uncheck-smart-quotes.png)

## Checkpoint

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: checkbox
* id: bf796faf-20de-4056-aed8-d0bdcd7ad720
* title: Installfest completed
* points: 1
* topics: installfest

##### !question

Check off the applications you got installed successfully.

##### !end-question

##### !options

* rbenv
* Ruby 2.6.5
* VS Code
* Slack
* Git
* Xcode Command-Line Tools

##### !end-options

##### !answer

* rbenv
* Ruby 2.6.5
* VS Code
* Slack
* Git
* Xcode Command-Line Tools

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->