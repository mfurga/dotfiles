# fish config

# config
set -g fish_greeting
set -g fish_autosuggestion_enabled 0

# alias
alias ida="~/.app/ida-free-pc-9.1/ida"
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

set -x FZF_DEFAULT_OPTS '--color="base16,fg+:20,bg+:18,prompt:5" --pointer=""'
fzf --fish | source

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

  echo -n -s (set_color $fish_color_user) "$USER" (set_color normal) ' ' (set_color $color_cwd) (prompt_pwd) $normal (fish_vcs_prompt) $normal " "$suffix " "
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
set -g fish_color_user bryellow
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

# prompt colors
set -g fish_color_user bryellow

# git prompt
set -g __fish_git_prompt_showdirtystate 1
set -g __fish_git_prompt_showuntrackedfiles 1
set -g __fish_git_prompt_showstashstate 1
set -g __fish_git_prompt_showcolorhints 1
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showupstream auto

set -g __fish_git_prompt_char_cleanstate        '✔'
set -g __fish_git_prompt_char_stagedstate       '●'
set -g __fish_git_prompt_char_dirtystate        '✚'
set -g __fish_git_prompt_char_untrackedfiles    '?'
set -g __fish_git_prompt_char_upstream_ahead    '↑'
set -g __fish_git_prompt_char_upstream_behind   '↓'
set -g __fish_git_prompt_char_stashstate        '↺'

# git prompt colors
set -g ___fish_git_prompt_color_branch (set_color normal)
set -g ___fish_git_prompt_color_branch_done (set_color normal)
set -g ___fish_git_prompt_color_dirtystate (set_color brred)
set -g ___fish_git_prompt_color_dirtystate_done (set_color normal)
set -g ___fish_git_prompt_color_untrackedfiles (set_color brblue)
set -g ___fish_git_prompt_color_untrackedfiles_done (set_color normal)
set -g ___fish_git_prompt_color_stagedstate (set_color bryellow)
set -g ___fish_git_prompt_color_stagedstate_done (set_color normal)
set -g ___fish_git_prompt_color_stashstate (set_color brmagenta)
set -g ___fish_git_prompt_color_stashstate (set_color brmagenta)
set -g ___fish_git_prompt_color_cleanstate  (set_color brgreen)
set -g ___fish_git_prompt_color_cleanstate_done  (set_color normal)

set -g ___fish_git_prompt_color_upstream (set_color brgreen)
set -g ___fish_git_prompt_color_upstream_done (set_color normal)

set -g ___fish_git_prompt_color_invalidstate (set_color brred)
set -g ___fish_git_prompt_color_invalidstate_done (set_color normal)

# source "/home/mf/code/emsdk/emsdk_env.fish"
