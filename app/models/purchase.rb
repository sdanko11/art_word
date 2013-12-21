class Purchase < ActiveRecord::Base
  belongs_to :customer
  belongs_to :art_piece

   validates_presence_of :customer
end
