class Artist < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :birthplace
  validates_presence_of :art_type
  has_many :art_pieces
  has_one :art_type
end
