function __git_add
  commandline | read -l buffer
  set selected_files (git status --porcelain | angler "$ANGLER_QUERY_OPTION '$buffer'" | \
    cut -d ' ' -f 2- | sed -e 's/^/:\//' | string escape -n)
  if test -n "$selected_files"
    commandline "git add $selected_files"
    commandline -f execute
  end
  commandline -f repaint
end
