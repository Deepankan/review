class CreateTvSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :tv_series do |t|
      t.string :name
      t.string :gener
      t.integer :no_of_seasons
      t.datetime :date_of_first_release
      t.string :director
      t.string :actor
      t.string :shoot_location
      t.string :country
      t.timestamps
    end
  end
end
