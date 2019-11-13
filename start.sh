if [ -z "$(byobu list-sessions | grep master-fest-app)" ]
then
  byobu new-session -d -t master-fest-app
  byobu rename-window master-fest-app
  byobu select-window -t master-fest-app:0
  byobu send-keys 'cd dist && python -m SimpleHTTPServer 8080' Enter
  byobu split-window -h
  byobu send-keys 'nodemon' Enter
fi
byobu attach -t master-fest-app
