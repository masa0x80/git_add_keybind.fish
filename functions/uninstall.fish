functions -e __git_add
bind | command grep __git_add | command cut -d ' ' -f 2 | read -l GIT_ADD_KEYBIND
eval bind -e $GIT_ADD_KEYBIND
