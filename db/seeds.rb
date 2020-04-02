# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Artist.destroy_all
linville = Artist.create!(first_name: 'Justin', last_name: 'Linville', gender: 'M')
manilow = Artist.create!(first_name: 'Barry', last_name: 'Manilow', gender: 'M')
houston = Artist.create!(first_name: 'Whitney', last_name: 'Houston', gender: 'F')
carey = Artist.create!(first_name: 'Mariah', last_name: 'Carey', gender: 'F')

Album.destroy_all
Album.create!(title: 'Justin Sings The Blues', star_rating: 3, year_released: 2014, artist: linville)
Album.create!(title: 'One Voice', star_rating: 5, year_released: 2014, artist: manilow)
Album.create!(title: 'My Love Is Your Love', star_rating: 4, year_released: 2014, artist: houston)
Album.create!(title: 'Merry Christmas', star_rating: 5, year_released: 2014, artist: carey)