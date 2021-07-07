class TvSeries < ApplicationRecord
  self.per_page = 10
  has_many :reviews

  validates :name, presence: true
  validates :gener, presence: true
  validates :actor, presence: true
  validates :director, presence: true

  def self.parse_csv_data(csv)
    csv.each do |row|
      tv_series = TvSeries.create(name: row[0], gener: row[1], no_of_seasons: row[2], date_of_first_release: row[3], director: row[4], actor: row[5], shoot_location: row[6], country: row[7])
    end
  end

  def avg_rating
    if self.reviews.present?
      self.reviews.pluck(:star).sum / self.reviews.count
    else
      0
    end
  end
end





