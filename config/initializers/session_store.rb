if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, :key => '_nba_fantasy', same_site: :none, secure: true
else
  Rails.application.config.session_store :cookie_store, :key => '_nba_fantasy'
end
