#!/usr/bin/env zsh

# Set required options
setopt prompt_subst

# Load required modules
autoload -Uz vcs_info

# Configure vcs_info settings
zstyle ':vcs_info:*' enable hg bzr git
zstyle ':vcs_info:*:*' unstagedstr '!'
zstyle ':vcs_info:*:*' stagedstr '+'
zstyle ':vcs_info:*:*' formats "$FX[bold]%r$FX[no-bold]/%S" "%s:%b" "%%u%c"
zstyle ':vcs_info:*:*' actionformats "$FX[bold]%r$FX[no-bold]/%S" "%s:%b" "%u%c (%a)"
zstyle ':vcs_info:*:*' nvcsformats "%~" "" ""

# Function to check if the Git repository is dirty
git_dirty() {
    command git rev-parse --is-inside-work-tree &>/dev/null || return
    command git diff --quiet --ignore-submodules HEAD &>/dev/null
    [ $? -eq 1 ] && echo "*"
}

# Function to display repository information
repo_information() {
    echo "%F{yellow}%n%f %F{blue}${vcs_info_msg_0_%%/.} %F{darkyellow}$vcs_info_msg_1_$(git_dirty) $vcs_info_msg_2_%f"
}

# Function to display the execution time of the last command
cmd_exec_time() {
    local stop=$(date +%s)
    local start=${cmd_timestamp:-$stop}
    local elapsed=$((stop - start))
    [ $elapsed -gt 5 ] && echo "${elapsed}s"
}

# Hook to get the initial timestamp for cmd_exec_time
preexec() {
    cmd_timestamp=$(date +%s)
}

# Hook to output additional information before each prompt
precmd() {
    setopt localoptions nopromptsubst
    vcs_info
    print -P "\n$(repo_information) %F{yellow}$(cmd_exec_time)%f"
    unset cmd_timestamp
}

# Define the prompt
PROMPT="%(?.%F{darkyellow}.%F{red})󰘍%f "
RPROMPT="%F{darkyellow}${SSH_TTY:+%n@%m}%f"
