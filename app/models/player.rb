class Player < ApplicationRecord
  include Rails.application.routes.url_helpers
  has_one_attached :photo

  def photo_url
    url_for(self.photo)
  end
end
