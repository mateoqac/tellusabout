class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :body
      t.string :country
      t.string :state
      t.string :city
      t.integer :weather_season_cd
      t.integer :user_id

      t.timestamps
    end
  end
end
