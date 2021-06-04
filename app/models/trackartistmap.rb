# == Schema Information
#
# Table name: trackartistmaps
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :bigint
#  track_id   :bigint
#
# Indexes
#
#  index_trackartistmaps_on_artist_id  (artist_id)
#  index_trackartistmaps_on_track_id   (track_id)
#
# Foreign Keys
#
#  fk_rails_...  (artist_id => artists.id)
#  fk_rails_...  (track_id => tracks.id)
#
class Trackartistmap < ApplicationRecord
  belongs_to :track
  belongs_to :artist
end
