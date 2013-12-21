class ArtType < ActiveRecord::Base
  validates_presence_of :name
  has_many :art_pieces
  belongs_to :art_piece
  belongs_to :artist
end
