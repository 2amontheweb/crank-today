# Heroku deploys app automatically on push to the `production` branch on GitHub

# Tail logs
heroku logs -t

# Migrate new database fields
heroku run rake db:migrate

# Check dynos
heroku ps
