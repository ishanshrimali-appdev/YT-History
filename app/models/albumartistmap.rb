# == Schema Information
#
# Table name: albumartistmaps
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :bigint
#  artist_id  :bigint
#
# Indexes
#
#  index_albumartistmaps_on_album_id   (album_id)
#  index_albumartistmaps_on_artist_id  (artist_id)
#
# Foreign Keys
#
#  fk_rails_...  (album_id => albums.id)
#  fk_rails_...  (artist_id => artists.id)
#
class Albumartistmap < ApplicationRecord
  belongs_to :album
  belongs_to :artist
end
