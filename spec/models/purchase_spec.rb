require 'spec_helper'

describe Purchase do
  pending "add some examples to (or delete) #{__FILE__}"

  it {should have_valid(:art_piece).when(ArtPiece.new)}
  it {should have_valid(:customer).when(Customer.new)}

end
