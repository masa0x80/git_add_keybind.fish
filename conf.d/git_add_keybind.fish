function __register_git_add_keybind --on-event fish_prompt
  not set -q GIT_ADD_KEYBIND; and set -l GIT_ADD_KEYBIND '\cg\ca'
  eval bind $GIT_ADD_KEYBIND __git_add_files
  functions -e __register_git_add_keybind
end
