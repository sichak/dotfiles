# Temporarily change options.
'builtin' 'local' '-a' 'p10k_config_opts'
[[ ! -o 'aliases'         ]] || p10k_config_opts+=('aliases')
[[ ! -o 'sh_glob'         ]] || p10k_config_opts+=('sh_glob')
[[ ! -o 'no_brace_expand' ]] || p10k_config_opts+=('no_brace_expand')
'builtin' 'setopt' 'no_aliases' 'no_sh_glob' 'brace_expand'

() {
  emulate -L zsh

  autoload -Uz is-at-least && is-at-least 5.1 || return

  # Unset all configuration options.
  unset -m 'POWERLEVEL9K_*'

  # Left prompt segments.
  typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
    root_indicator                   # user@host
    dir                       # current directory
    dir_writeable_joined                       # git status
    vcs              # python virtual environment
  )

  # Right prompt segments.
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    rbenv
    pyenv
    command_execution_time  # previous command duration
    background_jobs_joined                 # user@host
    time_joined                    # current time
  )

  # Basic style options that define the overall prompt look.
  typeset -g POWERLEVEL9K_MODE='nerdfont-complete'
  typeset -g POWERLEVEL9K_PROMPT_ON_NEWLINE=true
  typeset -g POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
  typeset -g POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=''
  typeset -g POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=''
  typeset -g POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=''

  # Prompt style
  typeset -g POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%F{white}"
  typeset -g POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%F{white} "

  # Add an empty line before each prompt except the first. This doesn't emulate the bug
  # in Pure that makes prompt drift down whenever you use the Alt-C binding from fzf or similar.
  typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

  # Grey Python Virtual Environment.
  typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND=$grey
  # Don't show Python version.
  typeset -g POWERLEVEL9K_VIRTUALENV_SHOW_PYTHON_VERSION=false
  typeset -g POWERLEVEL9K_VIRTUALENV_{LEFT,RIGHT}_DELIMITER=

  #
  typeset -g POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
  typeset -g POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
  typeset -g POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
  typeset -g POWERLEVEL9K_DIR_HOME_FOREGROUND="blue"
  typeset -g POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
  typeset -g POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="blue"

  # Context format when root: user@host. The first part white, the rest grey.
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_TEMPLATE="%F{$white}%n%f%F{$grey}@%m%f"
  # Context format when not root: user@host. The whole thing grey.
  typeset -g POWERLEVEL9K_CONTEXT_TEMPLATE="%F{$grey}%n@%m%f"
  # Don't show context unless root or in SSH.
  typeset -g POWERLEVEL9K_CONTEXT_{DEFAULT,SUDO}_CONTENT_EXPANSION=

  # Show previous command duration only if it's >= 5s.
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=5
  # Don't show fractional seconds. Thus, 7s rather than 7.3s.
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=0
  # Duration format: 1d 2h 3m 4s.
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FORMAT='d h m s'
  # Yellow previous command duration.
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=$yellow
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND=$clear

  # Grey Git prompt. This makes stale prompts indistinguishable from up-to-date ones.
  typeset -g POWERLEVEL9K_VCS_FOREGROUND=$grey
  typeset -g POWERLEVEL9K_VCS_BACKGROUND=$clear

  # Disable async loading indicator to make directories that aren't Git repositories
  # indistinguishable from large Git repositories without known state.
  typeset -g POWERLEVEL9K_VCS_LOADING_TEXT=

  # Don't wait for Git status even for a millisecond, so that prompt always updates
  # asynchronously when Git state changes.
  typeset -g POWERLEVEL9K_VCS_MAX_SYNC_LATENCY_SECONDS=0

  # VCS
  typeset -g POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="clear"
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="clear"
  typeset -g POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="yellow"
  typeset -g POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="yellow"

  # rbenv
  typeset -g POWERLEVEL9K_RBENV_BACKGROUND='clear'
  typeset -g POWERLEVEL9K_RBENV_FOREGROUND='red'
  #typeset -g POWERLEVEL9K_RBENV_PROMPT_ALWAYS_SHOW=true

  # pyenv
  typeset -g POWERLEVEL9K_PYENV_FOREGROUND='blue'
  typeset -g POWERLEVEL9K_PYENV_BACKGROUND='clear'
  #typeset -g POWERLEVEL9K_PYENV_PROMPT_ALWAYS_SHOW=true

  # Format for the current time: 09:51:02. See `man 3 strftime`.
  typeset -g POWERLEVEL9K_TIME_FORMAT='%D{%H:%M:%S}'
  typeset -g POWERLEVEL9K_TIME_FOREGROUND="grey"
  typeset -g POWERLEVEL9K_TIME_BACKGROUND="clear"
  # If set to true, time will update when you hit enter. This way prompts for the past
  # commands will contain the start times of their commands rather than the end times of
  # their preceding commands.
  typeset -g POWERLEVEL9K_TIME_UPDATE_ON_COMMAND=false

  # Transient prompt works similarly to the builtin transient_rprompt option. It trims down prompt
  # when accepting a command line. Supported values:
  #
  #   - off:      Don't change prompt when accepting a command line.
  #   - always:   Trim down prompt when accepting a command line.
  #   - same-dir: Trim down prompt when accepting a command line unless this is the first command
  #               typed after changing current working directory.
  typeset -g POWERLEVEL9K_TRANSIENT_PROMPT=off

  # Instant prompt mode.
  #
  #   - off:     Disable instant prompt. Choose this if you've tried instant prompt and found
  #              it incompatible with your zsh configuration files.
  #   - quiet:   Enable instant prompt and don't print warnings when detecting console output
  #              during zsh initialization. Choose this if you've read and understood
  #              https://github.com/romkatv/powerlevel10k/blob/master/README.md#instant-prompt.
  #   - verbose: Enable instant prompt and print a warning when detecting console output during
  #              zsh initialization. Choose this if you've never tried instant prompt, haven't
  #              seen the warning, or if you are unsure what this all means.
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=verbose

  # Hot reload allows you to change POWERLEVEL9K options after Powerlevel10k has been initialized.
  # For example, you can type POWERLEVEL9K_BACKGROUND=red and see your prompt turn red. Hot reload
  # can slow down prompt by 1-2 milliseconds, so it's better to keep it turned off unless you
  # really need it.
  typeset -g POWERLEVEL9K_DISABLE_HOT_RELOAD=true

  # If p10k is already loaded, reload configuration.
  # This works even with POWERLEVEL9K_DISABLE_HOT_RELOAD=true.
  (( ! $+functions[p10k] )) || p10k reload
}

(( ${#p10k_config_opts} )) && setopt ${p10k_config_opts[@]}
'builtin' 'unset' 'p10k_config_opts'
