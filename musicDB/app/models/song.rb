class Song < ActiveRecord::Base
  validates :artist_id, :name, presence: true
    belongs_to :artist
end
