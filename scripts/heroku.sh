heroku buildpacks:set heroku/php
git push heroku master
heroku addons:add heroku-postgresql:hobby-dev
heroku config | grep DATABASE_URL
heroku run php artisan migrate
