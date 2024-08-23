#! /bin/bash

echo "[INFO] Building..."

# Rails project
bundle install
bundle exec rake db:migrate
bundle exec rake assets:precompile

# Node project
$resultFromyarnInstall = yarn install

if [ $resultFromyarnInstall -eq 0 ]; then
  echo "[INFO] Build successful!"
else
  echo "[ERROR] Build failed!"
fi

exit $resultFromyarnInstall
