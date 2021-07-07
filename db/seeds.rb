# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
puts "Import of CSV Started"
csv_tv_series = CSV.read(Rails.root.join('lib', 'seeds', 'tv_series.csv'), :headers => true)
TvSeries.parse_csv_data(csv_tv_series)

csv_reviews = CSV.read(Rails.root.join('lib', 'seeds', 'reviews.csv'), :headers => true)
Review.parse_csv_data(csv_reviews)

puts "Import of CSV Done"



