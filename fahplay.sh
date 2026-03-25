# /usr/share/fahplay/fahplay.sh

__fahplay_hook() {
    local exit_status=$?

    if [ $exit_status -ne 0 ] && [ $exit_status -ne 130 ]; then
        (aplay -q /usr/share/fahplay/fahplay.wav >/dev/null 2>&1 &)
    fi

    return $exit_status
}

if [ -n "$BASH_VERSION" ]; then
    PROMPT_COMMAND="__fahplay_hook; ${PROMPT_COMMAND:-}"
elif [ -n "$ZSH_VERSION" ]; then
    autoload -Uz add-zsh-hook
    add-zsh-hook precmd __fahplay_hook
fi