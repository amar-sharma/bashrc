TIMES=0
function exitstatus {

  EXITSTATUS="$?"
  BOLD="\[\033[1m\]"
  RED="\[\033[1;31m\]"
  GREEN="\[\e[32;1m\]"
  BLUE="\[\e[34;1m\]"
  OFF="\[\033[m\]"

  PROMPT="${RED}\u@\h ${BLUE}\W${OFF}"

  if [ "${EXITSTATUS}" -eq 0 ]
  then
    PS1="${PROMPT} 😀  \$ "
    TIMES=0
  elif [ $TIMES == 0 ]; then
    PS1="${PROMPT} 😅  \$ "
    let $((TIMES++))
  elif [ $TIMES == 1 ]; then
    PS1="${PROMPT} 😜  \$ "
    let $((TIMES++))
  elif [ $TIMES == 2 ]; then
    PS1="${PROMPT} 😝  \$ "
    let $((TIMES++))
  elif [ $TIMES == 3 ]; then
    PS1="${PROMPT} 😏  \$ "
    let $((TIMES++))
  elif [ $TIMES == 4 ]; then
    PS1="${PROMPT} 😒  \$ "
    let $((TIMES++))
  elif [ $TIMES == 5 ]; then
    PS1="${PROMPT} 😑 \$ "
    let $((TIMES++))
  elif [ $TIMES == 6 ]; then
    PS1="${PROMPT} 😟  \$ "
    let $((TIMES++))
  elif [ $TIMES == 7 ]; then
    PS1="${PROMPT} 😠  \$ "
    let $((TIMES++))
  else
    PS1="${PROMPT} 😡  \$ "
  fi

  PS2="${BOLD}>${OFF} "
}

PROMPT_COMMAND=exitstatus
