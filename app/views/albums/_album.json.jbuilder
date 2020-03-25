json.extract! album, :id, :title, :star_rating, :year_released, :artist_id, :created_at, :updated_at
json.url album_url(album, format: :json)
