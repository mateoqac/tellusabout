class Story < ApplicationRecord
  extend SimpleEnum::Attribute

  validates :title, :body, :user_id, :country, :state, :city, presence: true

  belongs_to :user

  as_enum :weather_season, %i{Summer Spring Winter Autumn}, pluralize_scopes: false

  
end

