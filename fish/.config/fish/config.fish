# fish config

# config
set -g fish_greeting
set -g fish_autosuggestion_enabled 0

# alias
alias vim="nvim"
alias cat="bat"

alias ga="git add"
alias gs="git status"
alias gd="git diff"
alias gds="git diff --staged"
alias gc="git checkout"
alias gco="git commit"
alias gb="git branch"
alias gps="git push"
alias gpl="git pull"
alias gl="git log --graph"
alias glo="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)'"

bind \e. history-last-token-search-backward

set -x FZF_DEFAULT_OPTS '--color="16,fg+:20,bg+:18,prompt:5" --height 15 --pointer="" --no-bold --layout=reverse'
set -x _ZO_FZF_OPTS "$FZF_DEFAULT_OPTS --height 15 --no-border --bind 'tab:down,btab:up'"

# macOS: put Homebrew ahead of /usr/bin so `git` is the real binary, not Apple's slow xcrun shim
if test -d /opt/homebrew/bin
    fish_add_path --append --move /opt/homebrew/bin /opt/homebrew/sbin
end
fish_add_path --move $HOME/.local/bin

fzf --fish | source
zoxide init fish --cmd cd | source
command -q mise; and mise activate fish | source

# prompt
function fish_prompt
  set -lx __fish_last_status $status
  set -l normal (set_color normal)
  set -q fish_color_status
  or set -g fish_color_status red

  set -l color_cwd $fish_color_cwd
  set -l suffix '$'
  if functions -q fish_is_root_user; and fish_is_root_user
    if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
    end
    set suffix '#'
  end

  echo -n -s (set_color $fish_color_user) "$USER" (set_color normal) ' ' (set_color $color_cwd) (prompt_pwd) $normal (fish_git_prompt) $normal " "$suffix " "
end

# color schema
set -g fish_color_normal normal
set -g fish_color_command
set -g fish_color_keyword
set -g fish_color_quote
set -g fish_color_redirection
set -g fish_color_end
set -g fish_color_error
set -g fish_color_param
set -g fish_color_comment
set -g fish_color_match
set -g fish_color_selection --reverse
set -g fish_color_search_match --reverse
set -g fish_color_history_current
set -g fish_color_operator
set -g fish_color_escape
set -g fish_color_cwd brblue
set -g fish_color_cwd_root normal
set -g fish_color_option
set -g fish_color_valid_path
set -g fish_color_autosuggestion brblack
set -g fish_color_user green
set -g fish_color_host normal
set -g fish_color_host_remote yellow
set -g fish_color_history_current
set -g fish_color_status normal
set -g fish_color_cancel
set -g fish_pager_color_background
set -g fish_pager_color_prefix --underline
set -g fish_pager_color_progress brblack
set -g fish_pager_color_completion normal
set -g fish_pager_color_description brblack
set -g fish_pager_color_selected_background --reverse
set -g fish_pager_color_selected_prefix
set -g fish_pager_color_selected_completion
set -g fish_pager_color_selected_description
set -g fish_pager_color_secondary_prefix
set -g fish_pager_color_secondary_description
set -g fish_pager_color_secondary_completion
set -g fish_pager_color_secondary_background

set -g __git_prompt_branch_maxlen 20

function __git_prompt_dir --description 'Print the .git dir for $PWD without spawning git, or fail'
    set -l d $PWD
    while true
        if test -d "$d/.git"
            echo "$d/.git"; return 0
        else if test -f "$d/.git"  # worktree / submodule: "gitdir: <path>"
            string replace -r '^gitdir: ' '' <"$d/.git"; return 0
        end
        test "$d" = /; and return 1
        set d (path dirname $d)
    end
end

function fish_git_prompt
    set -l git_dir (__git_prompt_dir); or return 1
    string match -q '/*' -- $git_dir; or set git_dir "$PWD/$git_dir"

    set -l branch
    set -l staged 0
    set -l dirty 0
    set -l untracked 0
    set -l status_lines (command git -c core.fsmonitor= status --porcelain=v2 --branch -z 2>/dev/null | string split0)
    or return 1
    for line in $status_lines
        switch $line
            case '# branch.head *'
                set branch (string sub -s 15 -- $line)
            case '# *'
            case '1 *' '2 *'
                set -l xy (string sub -s 3 -l 2 -- $line)
                string match -rq '^[^.]' -- $xy; and set staged (math $staged + 1)
                string match -rq '[^.]$' -- $xy; and set dirty (math $dirty + 1)
            case 'u *'
                set dirty (math $dirty + 1)
            case '? *'
                set untracked (math $untracked + 1)
        end
    end

    if test "$branch" = '(detached)'
        set branch "("(string shorten -m8 -c '' -- (string sub -s 14 -- $status_lines[1]))")"
    else
        set branch (string shorten -m $__git_prompt_branch_maxlen -- $branch)
    end

    set -l operation
    if test -d $git_dir/rebase-merge; or test -d $git_dir/rebase-apply
        set operation '|REBASE'
    else if test -f $git_dir/MERGE_HEAD
        set operation '|MERGING'
    else if test -f $git_dir/CHERRY_PICK_HEAD
        set operation '|CHERRY-PICKING'
    else if test -f $git_dir/REVERT_HEAD
        set operation '|REVERTING'
    else if test -f $git_dir/BISECT_LOG
        set operation '|BISECTING'
    end

    set -l stash 0
    test -f $git_dir/logs/refs/stash; and set stash (count (string split \n <$git_dir/logs/refs/stash))

    set -l n (set_color normal)
    set -l info
    test $staged -gt 0; and set -a info (set_color bryellow)"●$staged"$n
    test $dirty -gt 0; and set -a info (set_color brred)"+$dirty"$n
    test $untracked -gt 0; and set -a info (set_color brblue)"?$untracked"$n
    test $stash -gt 0; and set -a info (set_color brmagenta)"↺$stash"$n
    test (count $info) -eq 0; and set info (set_color brgreen)"✔"$n

    echo -n -s ' (' $branch $operation '|' $info ')'
end

# source "/home/mf/code/emsdk/emsdk_env.fish"
