# == Schema Information
#
# Table name: tracks
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :bigint           not null
#
# Indexes
#
#  index_tracks_on_album_id  (album_id)
#
# Foreign Keys
#
#  fk_rails_...  (album_id => albums.id)
#
class Track < ApplicationRecord
  belongs_to :album

  has_many :trackartistmaps
  has_many :events
end
