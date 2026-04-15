#!/bin/bash

# artisanが存在するかチェック
if [ -f artisan ]; then
  echo "Laravel found. Starting server..."
  php artisan serve --host=0.0.0.0 --port=8000
else
  echo "Laravel not found. Keeping container alive..."
  tail -f /dev/null
fi