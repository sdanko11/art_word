class Collection < ActiveRecord::Base
  has_many :art_pieces
  validates_presence_of :name
end
