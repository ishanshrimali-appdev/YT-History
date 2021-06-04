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
#  user_id     :bigint
#
# Indexes
#
#  index_events_on_track_id  (track_id)
#  index_events_on_user_id   (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (track_id => tracks.id)
#  fk_rails_...  (user_id => users.id)
#
class Event < ApplicationRecord
  belongs_to :track
  belongs_to :user
end
