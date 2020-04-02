# Artist/Album App

This application was an assignment for a Santa Monica College server-side ruby course with the purpose of constructing a Rails web application that incorporates a database association.

# Setup

1. Clone the repo.
2. `cd /artist-album-app`
3. `bundle install`
4. `rails s`
5. `rake db:create`
6. `rake db:migrate`
7. `rake db:seed`
8. Visit `http://localhost:3000/albums` or `http://localhost:3000/artists`

# Run tests
`rake test:models`

(run `rake db:drop db:create db:migrate db:seed` to reset database)
