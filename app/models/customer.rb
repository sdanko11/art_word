class Customer < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :total_spent

  has_one :favorite_collection
  has_many :purchases

  has_many :art_pieces, :through => :purchases

end
