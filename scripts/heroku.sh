heroku buildpacks:set heroku/php
git push heroku master
heroku addons:add heroku-postgresql:hobby-dev
heroku config:set APP_KEY=$(php artisan --no-ansi key:generate --show)
heroku config | grep DATABASE_URL
heroku run php artisan migrate
