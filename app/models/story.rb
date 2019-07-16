class Story < ApplicationRecord
  extend SimpleEnum::Attribute

  attr_accessor :dirty_country

  after_save :create_country
  validates :title, :body, :user_id, :country, :state, :city, :weather_season, :type_of_experience, presence: true

  belongs_to :user

  as_enum :weather_season, %i{Summer Spring Winter Autumn}, pluralize_scopes: false
  as_enum :type_of_experience, %i{Work Holidays General}, pluralize_scopes: false



  def dirty_country
    return ISO3166::Country.new(country) if @dirty_country.nil?
    @dirty_country
  end

  private

  def create_country
    @dirty_country = ISO3166::Country.new(country)
  end

    
  
end

