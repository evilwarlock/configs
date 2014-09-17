# Path to your oh-my-zsh configuration.
ZSH=${HOME}/mydotfiles/oh-my-zsh

ZSH_THEME="candy"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Set keybindings
set -o vi
bindkey -M viins '^R' history-incremental-search-backward
bindkey -M vicmd '^R' history-incremental-search-backward

# Path
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
export LD_LIBRARY_PATH=/usr/local/lib

 #Development Env
export DEV_DISK="/home/koray/Development"
export CELLAR_FOLDER="/home/koray/cellar"

# Postgresql
#export POSTGRESQL_LIB="/usr/lib/postgresql/9.1/lib"
#export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${POSTGRESQL_PATH}

# Python
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages

# Java
export JAVA_HOME="/usr/lib/jvm/java-7-oracle"

# Android
export ANDROID_PATH="/home/koray/android-dev"
export ANDROID_SDK_PATH="${ANDROID_PATH}/sdk"
export ANDROID_SDK_TOOLS="${ANDROID_SDK_PATH}/tools"
export ANDROID_SDK_PLATFORM_TOOLS="${ANDROID_SDK_PATH}/platform-tools"
export ANDROID_NDK_TOOLS="${ANDROID_PATH}/ndk"
export PATH=${PATH}:${ANDROID_SDK_TOOLS}:${ANDROID_SDK_PLATFORM_TOOLS}:${ANDROID_NDK_TOOLS}

# Intellij
export INTELLIJ_HOME="/home/koray/android-dev/intellij"
export PATH=${PATH}:${INTELLIJ_HOME}/bin
# Scala
#export SCALA_HOME="${DEV_DISK}/development/lib/scala/scala"
#export PATH=${PATH}:${SCALA_HOME}/bin

# erlang
#export ERL_TOP="/usr/lib/erlang"
#export PATH=${PATH}:${ERL_TOP}:/bin

alias dev="cd ${DEV_DISK}"
alias celler="cd ${CELLAR_FOLDER}"
alias work="cd ${DEV_DISK}/workspace"
alias lab="cd ${DEV_DISK}/lab"
alias mydoc="cd ~/Documents"

#define functions
ClearHistory()
{
  rm -rf .zhistory
  rm -rf .zsh_history
  source ~/.zshrc
}

open()
{
  for filename in $*
  xdg-open $filename &>/dev/null &
}

alias mount-disk="sudo udisks --mount /dev/sdb"

# envioronment variable for citricroot

export CITRICROOT=/home/koray/Desktop/CITRIC_0.85
export PATH=$PATH:$CITRICROOT/tools/arm-linux/bin

#Sourcing the tinyos environment variable setup script

#source /opt/tinyos-2.1.2/tinyos.sh
#export CLASSPATH=$CLASSPATH:

# msp430-gcc update version 4.6.3
#export PATH=/usr/local/msp430/bin:$PATH

#VLfeat environment variables
#export VLFEATROOT=/home/vlfeat
#export PATH=VLFEATROOT/bin/ARCH:$PATH
#export MANPATH=VLFEATROOT/src:$MANPATH
