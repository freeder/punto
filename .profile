# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -f ~/.my_bash_locals ] ; then
    . ~/.my_bash_locals
fi

PATH=$HOME/apps/nodejs/bin:$PATH
export PATH

PATH=$HOME/apps/sublime_text_2:$PATH
export PATH

PATH=$HOME/apps/android-sdk-linux/tools:$HOME/apps/android-sdk-linux/platform-tools:$PATH
export PATH

PATH=$HOME/apps/apache-maven-3.0.4/bin:$PATH
export PATH

JAVA_HOME=/usr/lib/jvm/java-6-openjdk-i386
export JAVA_HOME

# Rbenv instalation
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

