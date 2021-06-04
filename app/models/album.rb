# == Schema Information
#
# Table name: albums
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Album < ApplicationRecord
    has_many :tracks, dependent: :destroy
    has_many :albumartistmaps, dependent: :destroy
end
