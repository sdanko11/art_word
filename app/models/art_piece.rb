class ArtPiece < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :price
  validates_presence_of :art_type
  validates_presence_of :available_for_purchase
  validates_presence_of :artist
  validates_presence_of :collection

  has_one :customer
  has_one :art_type
  belongs_to :artist
  belongs_to :collection
  belongs_to :art_type

  # has_many :art_pieces, :through => :purchases

  # has_many :customers, :through => :art_pieces

end
