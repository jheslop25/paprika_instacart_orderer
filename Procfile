web: bundle exec rails server -p $PORT
worker: bundle exec sidekiq -t 25 -c 3
release: rake db:migrate
