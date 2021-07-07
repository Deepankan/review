class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :tv_series
      t.references :user
      t.decimal  :star, precision: 10, scale: 2
      t.string :review

      t.timestamps
    end
  end
end
