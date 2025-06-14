# fish config
# Author: Mateusz Furga

# config
set -g fish_greeting
set -g fish_autosuggestion_enabled 0

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
set -g fish_color_user ffcd75
set -g fish_color_cwd brblue

# git prompt
set -g __fish_git_prompt_showdirtystate 1
set -g __fish_git_prompt_showuntrackedfiles 1
set -g __fish_git_prompt_showstashstate 1
set -g __fish_git_prompt_showcolorhints 1
set -g __fish_git_prompt_show_informative_status 0

# git prompt colors
set -g ___fish_git_prompt_color_branch (set_color normal)
set -g ___fish_git_prompt_color_branch_done (set_color normal)
set -g ___fish_git_prompt_color_dirtystate (set_color brred)
set -g ___fish_git_prompt_color_dirtystate_done (set_color normal)
set -g ___fish_git_prompt_color_untrackedfiles (set_color brblue)
set -g ___fish_git_prompt_color_untrackedfiles_done (set_color normal)
set -g ___fish_git_prompt_color_stagedstate (set_color bryellow)
set -g ___fish_git_prompt_color_stagedstate_done (set_color normal)

