timestamp() {
  file_name=$1

  current_time=$(date "+%Y.%m.%d-%H.%M.%S")A
  echo "Current Time: $current_time"

  new_fileName=$file_name.$current_time
  echo "New Filename: " "$new_fileName"

  mv $file_name $new_fileName
  echo "You should see a new file generated with a timestamp on it"
}

# Get Environment Variables from AWS Secret Manager
gevaws() {
  if [ -z "$1" ]; then
    echo "Please specify the AWS Secret Manager secret you want to retrieve environment variables from"
  else
    aws secretsmanager get-secret-value --secret-id ${1} --query SecretString --output text | jq -r 'to_entries|map("\(.key)=\(.value|tostring)")|.[]' > /tmp/secrets.env
    eval $(cat /tmp/secrets.env | sed 's/^/export /')
    rm -f /tmp/secrets.env
  fi
}

viminstall() {
  cd $DOT_FILES
  git submodule add -b master --name $1 $2 vim/$VIM_START_PLUGINS/$1
  cd - 
}

alias shipit="git commit -a --amend --no-edit --no-verify && git push --force"
