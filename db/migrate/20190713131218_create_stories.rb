class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.string :country, null: false
      t.string :state, null: false
      t.string :city, null: false
      t.integer :weather_season_cd, null: false
      t.integer :type_of_experience_cd, null: false
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index :stories, :user_id
  end
end
