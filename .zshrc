# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

ZSH_THEME="gregouz"

plugins=(
  ## internal plugins : github.com/ohmyzsh/ohmyzsh/tree/master/plugins
  #brew
  #cargo
  colorize
  colored-man-pages
  #command-not-found # warning : increase zsh load time
  docker
  #docker-compose
  git
  golang
  #httpie
  python
  pip
  #rust
  virtualenv
  ## external plugins
  # git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  zsh-autosuggestions
  # git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
  zsh-completions
  # git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  zsh-syntax-highlighting
  zshfl # from .oh-my-zsh/custom/plugins
)
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

source $ZSH/oh-my-zsh.sh

#-- OPTIONS --#
# Print duration of command if it took more than 10 seconds
REPORTTIME=10
setopt HIST_REDUCE_BLANKS # remove superfluous blanks from history items
setopt INC_APPEND_HISTORY # save history entries as soon as they are entered
setopt EXTENDED_HISTORY # remember command start time and duration


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cp="cp -iv"
alias delete_ds_store="find . -name '.DS_Store' -type f -delete"
alias dotfiles='/usr/bin/git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}'
alias ffind="sk --ansi -i -c 'ag --color \"{}\"' --bind 'ctrl-p:execute-silent(sublime {1})+accept,ctrl-y:execute(preview.sh {}),command-c:execute(echo {} | pbcopy)'"
alias k="kubectl"
alias know="sublime ${HOME}/dev/knowledge/content/docs"
alias ll="ls -alh"
alias ln="ln -v"
alias mv="mv -iv"
alias notes="sublime ${HOME}/Nextcloud/Notes"
alias ooo="open ."
alias path='echo -e ${PATH//:/\\n}'
alias reload="exec ${SHELL} -l"
alias s="sublime"
alias sss="sublime ."
alias ccc="code ."
if [[ "${TERM}" == "xterm-kitty" ]]; then
  alias ssh="kitty +kitten ssh"
  alias icat="kitty +kitten icat --align left"
fi
alias standup="( cd ~/dev && git standup -m 2 -s -A 'last Monday' -D format:'%A ùd %B %Y - %H:%M' )"
alias shrug='echo -E "¯\_(ツ)_/¯" | tee /dev/tty | pbcopy'
alias todo="sublime ${NEXTCLOUD}/Notes/_TODO.txt"
alias wget="wget --hsts-file ${XDG_DATA_HOME}/wget/wget_hsts"
alias xargs='xargs ' # create an xargs alias with trailing space
alias zshconfig="sublime ~/.zshrc"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust \
    jonmosco/kube-ps1

### End of Zinit's installer chunk

bindkey '^ I'   complete-word       # tab         | complete
bindkey '^[[Z' autosuggest-accept  # shift + tab  | autosuggest
source <(kubectl completion zsh)

export KUBECONFIG=~/.kube/config:~/.kube/kube-dev.yaml:~/.kube/kube-tech.yaml:~/.kube/admin-kube-dev.yaml:~/.kube/kube-preprod.yaml:~/.kube/kube-prod.yaml
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

#Might not be the proper way but well
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

#-- FUNCTIONS --#

function calc() {
  local result=""
  result="$(printf "scale=10;$*\n" | bc --mathlib | tr -d '\\\n')"
  #                       └─ default (when `--mathlib` is used) is 20
  if [[ "$result" == *.* ]]; then
    # improve the output for decimal numbers
    printf "$result" |
    sed -e 's/^\./0./'        `# add "0" for cases like ".5"` \
      -e 's/^-\./-0./'      `# add "0" for cases like "-.5"`\
      -e 's/0*$//;s/\.$//'   # remove trailing zeros
  else
    printf "$result"
  fi
  printf "\n"
}

# cd to the parent directory of a file, useful when drag-dropping a file into the terminal
function cdf () { [ -f "${1}" ] && { cd "$(dirname "${1}")"; } || { cd "${1}"; } ; pwd; }
alias fcd="cdf"

# johnnydecimal cd - johnnydecimal.com/concepts/working-at-the-terminal/
function cjd () {
  pushd ~/Nextcloud/Documents/*/*/${1}*
}

# copy to clipboard
function clip() {
  cat $1 | pbcopy
}

# All the dig info
function digga() {
  dig +nocmd "$1" any +multiline +noall +answer
}

# find dirty git repos
function dirty() {
  find ~/dev -name .git -type d -prune 2> /dev/null | while read d; do (cd $d/.. ; [[ -z $(git status -s) ]] || echo "${PWD} is not clean" ); done
}

# wrapper for easy extraction of compressed files
function extract () {
  if [ -f ${1} ] ; then
      case ${1} in
          *.tar.xz)    tar xvJf ${1}    ;;
          *.tar.bz2)   tar xvjf ${1}    ;;
          *.tar.gz)    tar xvzf ${1}    ;;
          *.bz2)       bunzip2 ${1}     ;;
          *.rar)       unrar e ${1}     ;;
          *.gz)        gunzip ${1}      ;;
          *.tar)       tar xvf ${1}     ;;
          *.tbz2)      tar xvjf ${1}    ;;
          *.tgz)       tar xvzf ${1}    ;;
          *.apk)       unzip ${1}       ;;
          *.epub)      unzip ${1}       ;;
          *.xpi)       unzip ${1}       ;;
          *.zip)       unzip ${1}       ;;
          *.war)       unzip ${1}       ;;
          *.jar)       unzip ${1}       ;;
          *.Z)         uncompress ${1}  ;;
          *.7z)        7z x ${1}        ;;
          *)           echo "don't know how to extract '${1}'..." ;;
      esac
  else
      echo "'${1}' is not a valid file!"
  fi
}

function f() {
  find . -name "$1"
}

# find where a text is located in current dir
function findtext() {
  grep -rnw . -e "$*"
}

# Create animated GIFs from any video
# Uses http://gist.github.com/SlexAxton/4989674
function gifify() {
  if [[ -n "$1" ]]; then
    if [[ $2 == '--good' ]]; then
      ffmpeg -i $1 -r 10 -vcodec png out-static-%05d.png
      time convert -verbose +dither -layers Optimize -resize 600x600\> out-static*.png  GIF:- | gifsicle --colors 128 --delay=5 --loop --optimize=3 --multifile - > $1.gif
      rm out-static*.png
    else
      ffmpeg -i $1 -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > $1.gif
    fi
  else
    echo "proper usage: gifify <input_movie.mov>. You DO need to include an extension."
  fi
}

# markdown bash execute : https://gist.github.com/gmolveau/67d10dfaea1fdd729865b2f8d46f7488
function mdexe() {
  if [ -f "${1}" ]; then
    cat ${1} | # print the file
    sed -n '/```bash/,/```/p' | # get the bash code blocks
    sed 's/```bash//g' | #  remove the ```bash
    sed 's/```//g' | # remove the trailing ```
    sed '/^$/d' | # remove empty lines
    ${SHELL} ; # execute the commands
  else
    echo "${1} is not valid" ;
  fi
}

# create a new directory and enter it - mkdir + cd
function mkcd () {
  mkdir -p "$@" && cd "$_";
}

function pdfcompress() {
  # source : https://gist.github.com/ahmed-musallam/27de7d7c5ac68ecbd1ed65b6b48416f9
  # brew install ghostscript | apt install ghostscript
  gs -q -dNOPAUSE -dBATCH -dSAFER -sDEVICE=pdfwrite -dCompatibilityLevel=1.3 -dPDFSETTINGS=/screen -dEmbedAllFonts=true -dSubsetFonts=true -dColorImageDownsampleType=/Bicubic -dColorImageResolution=144 -dGrayImageDownsampleType=/Bicubic -dGrayImageResolution=144 -dMonoImageDownsampleType=/Bicubic -dMonoImageResolution=144 -sOutputFile=compressed.${1} ${1};
}

function println() { echo ; echo "$@" ; echo }

function random_string() {
  openssl rand -hex 32
}

# create a random folder in /tmp and cd into it
function tmp {
  cd $(mktemp -d /tmp/${1}_XXXX)
}

function youtube-mp3 () {
  youtube-dl --restrict-filenames --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '~/Music/%(title)s.%(ext)s' "${1}"
}

function youtube-mp4() {
  youtube-dl --restrict-filenames --embed-subs --write-auto-sub --merge-output-format mkv -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' -o '~/Movies/%(title)s.%(ext)s' "${1}"
  # --postprocessor-args "-c:v libx265 -c:a aac -strict experimental -preset slow -x265-params crf=21"
  # TODO x265 encode, audio in AAC, constant-quality RF 21, preset slow
}

#-- PERSONAL ARCHIVE --#
# TODO en faire un cli
function archive-download () {
  if [ $# -eq 0 ]; then
    echo "missing argument: URL"
    exit 1
  fi
  FILE=$(wget -P ${ARCHIVE} -nv --content-disposition "${1}" 2>&1 | cut -d\" -f2)
  FILENAME="$(basename -- "${1}")"
  EXTENSION=$([[ "${FILENAME}" = *.* ]] && echo ".${FILENAME##*.}" || echo '')
  if [ $# -eq 2 ]; then
    FILENAME="$(date +%Y-%m-%d)-$(echo "${2}" | sed -E 's/[^[:alnum:]]+/_/g')"
  fi
  mv -n ${FILE} ${ARCHIVE}/${FILENAME}${EXTENSION};
  echo ${ARCHIVE}/${FILENAME}${EXTENSION};
}

function archive-youtube () {
  youtube-dl -no-playlist --embed-subs --write-auto-sub -no-playlist --merge-output-format mkv --restrict-filenames -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' -o '${ARCHIVE}/'$(date +%Y-%m-%d)'-%(title)s.%(ext)s' "${1}"
}

function archive-web () {
  if [ $# -eq 2 ]; then
    FILENAME="$(date +%Y-%m-%d)-$(echo "${2}" | sed -E 's/[^[:alnum:]]+/_/g').html"
  elif [ $# -eq 1 ]; then
    FILENAME="$(date +%Y-%m-%d)-$(basename "${1}" | sed -E 's/[^[:alnum:]]+/_/g').html"
  elif [ $# -eq 0 ]; then
    echo "missing argument: URL"
    exit 1
  fi
  # brew install monolith | snap install monolith
  monolith -f -j -s ${1} -o ${ARCHIVE}/${FILENAME};
  echo ${FILENAME};
}

function pip-install-save () {
  python3 -m pip install $1 && python3 -m pip freeze | grep $1 >> requirements.txt
}

# OS-specifics functions
if [[ "${OSTYPE}" == "linux-gnu"* ]]; then # linux

  function update() {
    deactivate 2> /dev/null
    sudo apt update && sudo apt -y upgrade && sudo apt -y dist-upgrade
    echo "updating npm ..."
    sudo npm install -g npm
    npm update -g
    echo "updating gem ..."
    gem update
    echo "updating cargo ..."
    cargo update
    echo "updating pip and pip apps ..."
    pip3 install --user --upgrade pip
    command -v pip-chill >/dev/null 2>&1 || pip3 install --user pip-chill
    pip-chill --no-version | xargs pip3 install -U
  }

  function freeze() {
    println "# apt-get packages"
    python3 -c "from apt import cache;manual = set(pkg for pkg in cache.Cache() if pkg.is_installed and not pkg.is_auto_installed);depends = set(dep_pkg.name for pkg in manual for dep in pkg.installed.get_dependencies('PreDepends', 'Depends', 'Recommends') for dep_pkg in dep);print('\n'.join(pkg.name for pkg in manual if pkg.name not in depends))"
    println "# snap packages"
    snap list | grep -v Publisher | grep -v canonical | awk '{print $1}'
    if [ -d "$HOME/bin" ]; then
      println "# user bin "
      ls -1 "$HOME/bin"
    fi
    println "# pip3 apps"
    pip-chill --no-version
    println "# golang apps "
    ls -1 ${GOBIN}  
    println "# cargo apps "
    cargo install --list
    echo "# npm apps \n"
    npm list -g --depth=0
  }

elif [[ "${OSTYPE}" == "darwin"* ]]; then # macOS

  function update() {
    deactivate 2> /dev/null
    println "updating brew ..."
    brew update
    println "upgrading brew ..."
    brew upgrade
    println "cleaning brew ..."
    brew cleanup -s
    #now diagnotic
    brew doctor
    brew missing

    println "updating apps from the mac app store ..."
    if brew ls --versions mas > /dev/null; then
      mas upgrade
    else
      brew install mas
      mas upgrade
    fi
    println "updating npm ..."
    npm update -g
    println "updating gem ..."
    gem update
    println "updating cargo ..."
    cargo update
    println "updating pip and pip apps ..."
    pip3 install --user --upgrade pip
    command -v pip-chill >/dev/null 2>&1 || pip3 install --user pip-chill
    pip-chill --no-version | xargs pip3 install -U
  }

  function freeze() {
    println "# System and User .app"
    ls -1 /Applications 
    ls -1 ~/Applications 
    println "# Mac App Store apps"
    mas list | sed 's/ / # /'  
    println "# brew apps"
    brew leaves 
    println "# brew cask apps"
    brew cask list | tr -s ' ' 
    println "# pip3 apps"
    command -v pip-chill >/dev/null 2>&1 || pip3 install pip-chill
    pip-chill --no-version 
    println "# golang apps"
    ls -1 ${GOBIN} 
    println "# cargo apps"
    cargo install --list 
    println "# npm apps"
    npm list -g --depth=0 
  }
fi
