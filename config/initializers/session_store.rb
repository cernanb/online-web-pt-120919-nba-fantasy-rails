if Rails.env.production == 'production'
  Rails.application.config.session_store :cookie_store, :key => '_nba_fantasy', domain: 'nba-fantasy.netlify.app/'
else
  Rails.application.config.session_store :cookie_store, :key => '_nba_fantasy'
end
