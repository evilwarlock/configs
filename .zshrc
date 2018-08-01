# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/yzheng04/.oh-my-zsh"

ZSH_THEME="candy"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# Set keybindings
#set -o vi
#bindkey -M viins '^R' history-incremental-search-backward
#bindkey -M vicmd '^R' history-incremental-search-backward

# Path
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
export LD_LIBRARY_PATH=/usr/local/lib

# CUDA
export CUDAPATH="/usr/local/cuda-9.0"
export PATH=${PATH}:${CUDAPATH}/bin
export LD_LIBRARY_PATH=LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${CUDAPATH}/lib64

 #Development Env
export DEV_DISK="/home/yu/Development"
export CELLAR_FOLDER="${DEV_DISK}/cellar"

# Postgresql
#export POSTGRESQL_LIB="/usr/lib/postgresql/9.1/lib"
#export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${POSTGRESQL_PATH}

# Python
export PYTHONPATH=/usr/local/lib/python2.7/site-packages

# Java
export JAVA_HOME="/usr/lib/jvm/java-7-oracle"

# OpenCV4Android
export OPENCV_ANDROID="${CELLAR_FOLDER}/OpenCV-2.4.9-android-sdk"

# Android
export ANDROID_PATH="${CELLAR_FOLDER}/android"
export ANDROID_SDK_PATH="${ANDROID_PATH}/sdk"
export ANDROID_SDK_TOOLS="${ANDROID_SDK_PATH}/tools"
export ANDROID_SDK_PLATFORM_TOOLS="${ANDROID_SDK_PATH}/platform-tools"
export ANDROID_NDK_TOOLS="${ANDROID_PATH}/ndk"
export PATH=${PATH}:${ANDROID_SDK_TOOLS}:${ANDROID_SDK_PLATFORM_TOOLS}:${ANDROID_NDK_TOOLS}

# Intellij
export INTELLIJ_HOME="/home/yu/cellar/intellij"
export PATH=${PATH}:${INTELLIJ_HOME}/bin

# Scala
#export SCALA_HOME="${DEV_DISK}/development/lib/scala/scala"
#export PATH=${PATH}:${SCALA_HOME}/bin

# erlang
#export ERL_TOP="/usr/lib/erlang"
#export PATH=${PATH}:${ERL_TOP}:/bin

alias dev="cd ${DEV_DISK}"
alias cellar="cd ${CELLAR_FOLDER}"
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
# Example aliases
 alias zshconfig="gedit ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
