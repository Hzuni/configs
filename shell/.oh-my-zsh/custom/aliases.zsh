timestamp() {
  file_name=$1

  current_time=$(date "+%Y.%m.%d-%H.%M.%S")A
  echo "Current Time: $current_time"

  new_fileName=$file_name.$current_time
  echo "New Filename: " "$new_fileName"

  mv $file_name $new_fileName
  echo "You should see a new file generated with a timestamp on it"
}

viminstall() {
  cd $DOT_FILES
  git submodule add -b master --name $1 $2 vim/$VIM_START_PLUGINS/$1
  cd - 
}

alias shipit="git commit -a --amend --no-edit --no-verify && git push --force"
