if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, :key => '_nba_fantasy', domain: '.dry-hollows-01080.herokuapp.com'
else
  Rails.application.config.session_store :cookie_store, :key => '_nba_fantasy'
end
