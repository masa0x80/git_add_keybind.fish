function __git_add
  commandline | read -l buffer
  git status --porcelain | \
        angler "$ANGLER_QUERY_OPTION '$buffer'" | \
        awk -v git_root=:/ '{print git_root$2}' | \
        tr '\n' ' ' | \
        read -l selected_files
  if test -n "$selected_files"
    commandline "git add $selected_files"
    commandline -f execute
  end
  commandline -f repaint
end
