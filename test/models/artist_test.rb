require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "there should be 4 different artists" do
	  all_artist = Artist.all()
	  artist_titles = []
	  all_artist.each do |artist|
	  	artist_titles.push("#{artist.first_name} #{artist.last_name}")
	  end
	  artist_titles = artist_titles.uniq
	  assert_equal(4, artist_titles.count(), "not 4 different artists")
	end

	test "each artist has album associated" do
		album_artist_ids = Album.all().ids

		all_artists = Artist.all()
		all_artists.each do |artist|
			assert album_artist_ids.include?(artist.id)
		end
	end

	test "Michael Jackson is found" do
	  artist = Artist.find_by_last_name("Jackson")
	  assert_equal("Michael", artist.last_name, "last name is not right")
	  assert_equal("Jackson", artist.first_name, "first name is not right")
	end
end
