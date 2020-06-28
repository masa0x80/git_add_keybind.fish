function __git_add
    type fzf >/dev/null || return 1

    commandline | read -l buffer
    set -q GIT_ADD_QUERY_OPTION || set -l GIT_ADD_QUERY_OPTION '--query'
    set selected_files (git status --porcelain | fzf $GIT_ADD_QUERY_OPTION $buffer | \
      string sub -s 4 | sed -e 's/^/:\//' | string unescape | string escape -n)
    if test -n "$selected_files"
        commandline "git add $selected_files"
        commandline -f execute
    end
    commandline -f repaint
end
