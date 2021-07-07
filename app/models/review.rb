class Review < ApplicationRecord
  belongs_to :user
  belongs_to :tv_series

  def self.parse_csv_data(csv)
    csv.each do |row|
      tv_series = TvSeries.find_by_name(row[0])
      user = User.find_or_create_by(name: row[1])
      Review.create(tv_series_id: tv_series.id, user_id: user.id, star: row[2], review: row[3])
    end
  end
end
