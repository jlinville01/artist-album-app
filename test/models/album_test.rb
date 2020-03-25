require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "there should be 4 different albums" do
	  all_albums = Album.all()
	  album_titles = []
	  all_albums.each do |album|
	  	album_titles.push(album.title)
	  end
	  album_titles = album_titles.uniq
	  assert_equal(4, album_titles.count(), "not 4 different albums")
	end

	test "each album was released in 2014" do
	  all_albums = Album.all()
	  all_albums.each do |album|
	  	assert_equal(2014, album.year_released, "album not released in 2014")
	  end
	end

	test "there are no albums with 2 stars or 1 stars" do
	  all_albums = Album.all()
	  all_albums.each do |album|
	  	assert_operator album.star_rating, :>, 2
	  end
	end
end
