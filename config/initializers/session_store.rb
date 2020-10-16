if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, :key => '_nba_fantasy'
else
  Rails.application.config.session_store :cookie_store, :key => '_nba_fantasy'
end
