#!/bin/bash
# aliases.sh

# --- Git Aliases ---

alias ciao="git checkout"
alias dice="git pull"
alias pronto="git push"
alias ecco="git commit -m"
alias tutti="git add ."
alias gucci="git rebase"
alias fuhged="git branch -d"
alias boof="git reset --soft HEAD~"

# --- Man Page ---

function ciao-git() {
    if [[ "$1" == "-h" || "$1" == "--help" ]]; then
        cat <<EOF
CIAO-GIT(1)                     User Commands                    CIAO-GIT(1)

NAME
    ciao-git - Terminal aliases to give your Git operations that special sauce

SYNOPSIS
    ciao-git [OPTIONS]
    <alias_command> [GIT_ARGUMENTS]

DESCRIPTION
    ciao-git provides a suite of aliases to make git commands feel a little
    more like home. It wraps standard git operations in Italian slang.

OPTIONS
    -h, --help
        Display this help message and exit.

AVAILABLE ALIASES
    ciao [branch]
        (git checkout)
        Switch branches or restore working tree files.

    dice
        (git pull)
        Fetch from and integrate with another repository or a local branch.

    pronto
        (git push)
        Update remote refs along with associated objects.

    ecco "message"
        (git commit -m)
        Record changes to the repository.

    tutti
        (git add .)
        Add all file contents to the index.

    gucci [branch]
        (git rebase)
        Reapply commits on top of another base tip.

    fuhged [branch]
        (git branch -d)
        Delete a branch.

    boof
        (git reset --soft HEAD~)
        Undo the last commit but keep changes in staging.

AUTHOR
    Kilian Kukelka

EOF
    else
        echo "ciao-git: invalid option. Try 'ciao-git -h' for help."
    fi
}