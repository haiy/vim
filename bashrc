# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ctags='exuberant-ctags'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#=====================
#personal settings
#export http_proxy=127.0.0.1:8087

export CLICOLOR=1
alias ll='ls -a -l'
TEST=/home/haiy/Documents/test_project/
proxy=/home/haiy/Documents/goagent/local/proxy.py
alias tmux="TERM=screen-256color-bce tmux"
export TERM="xterm-256color"
export LANG="zh_CN.UTF-8"
export LC_ALL="zh_CN.UTF-8"
source ~/.git-completion.bash
alias ctags='/usr/local/bin/ctags'
export GITHUB=/home/haiy/Documents/GITHUB
export CPLUS_INCLUDE_PATH=/home/haiy/Documents/test_project/app_service/include:$CPLUS_INCLUDE_PATH
export LIBRARY_PATH=/home/haiy/Documents/test_project/app_service/include:$LIBRARY_PATH
export PYTHONPATH=/home/haiy/Documents/GITHUB/python_lib:$PYTHON_PATH
export PLB=/home/haiy/Documents/GITHUB/lib

export PATH=/usr/local/bin:$PATH:/usr/local/mysql/bin

#export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
#export JAVA_HOME="`dirname $(readlink /etc/alternatives/java)`/../"
export JAVA_HOME=/home/haiy/Downloads/jdk1.8.0_11
export HADOOP_INSTALL=$HOME/Downloads/hadoop-2.2.0/
export HADOOP_CONF_DIR=$HADOOP_INSTALL/etc/hadoop/
export HADOOP_MAPRED_HOME=$HADOOP_INSTALL
export HADOOP_COMMON_HOME=$HADOOP_INSTALL
export HADOOP_HDFS_HOME=$HADOOP_INSTALL
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_INSTALL/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_INSTALL/lib"
export YARN_HOME=$HADOOP_INSTALL
export SPARK_HOME=/home/haiy/Downloads/spark-1.0.0-bin-hadoop2
export HIVE_HOME=/home/haiy/Downloads/apache-hive-0.13.1-bin
export HBASE_HOME=/home/haiy/Downloads/hbase-0.98.3-hadoop2
export PATH=$HIVE_HOME/bin:$PATH
export PATH=$HBASE_HOME/bin:$PATH
export PATH=$PATH:$HADOOP_INSTALL/bin:$HADOOP_INSTALL/sbin:$GITHUB/bash_src:$SPARK_HOME/bin
alias g5='ssh ib5'
alias g6='ssh ib15'
alias cdddd='cd ../../../'
alias cddd='cd ../../'
alias cdd='cd ../'

export IDCenter=/home/haiy/Documents/test_project/ade/IDCenter
export SCALA_HOME=/home/haiy/Downloads/scala-2.9.3
#export SHARK_HOME=/home/haiy/Downloads/shark-0.8.0-bin-cdh4/shark-0.8.0
export SHARK_HOME=/home/haiy/Downloads/shark-0.9.1-bin-hadoop2
export PATH=$PATH:$SHARK_HOME/bin
export SPARK_ASSEMBLY_JAR=/home/haiy/Downloads/spark-1.0.0-bin-hadoop2/lib
export ECLIPSE_HOME=/home/haiy/Downloads/eclipse
export EDITOR=vim
export CLASSPATH=/home/haiy/Downloads/data/checkstyle-5.7:$CLASSPATH
source /home/haiy/.tmuxinator/*.bash

export PYTHONSTARTUP=/home/haiy/.config/pythonstartup.py