class FavoriteCollection < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :customer
  belongs_to :customer
end
