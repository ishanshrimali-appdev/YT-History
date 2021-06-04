# == Schema Information
#
# Table name: events
#
#  id          :bigint           not null, primary key
#  date        :date
#  temperature :string
#  time        :time
#  weather     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  track_id    :bigint           not null
#
# Indexes
#
#  index_events_on_track_id  (track_id)
#
# Foreign Keys
#
#  fk_rails_...  (track_id => tracks.id)
#
class Event < ApplicationRecord
  belongs_to :track
end
