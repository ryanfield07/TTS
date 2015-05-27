class Artist < ActiveRecord::Base
  validates :genre_id, :name, presence: true
    has_many :songs
  belongs_to :genre
end
