require 'spec_helper'

describe ArtPiece do

  it { should have_valid(:name).when('Cool Art', 'the forest')}
  it { should_not have_valid(:name).when('', nil)}

  it { should have_valid(:price).when(99, 99.99, 409.99) }
  it { should_not have_valid(:price).when('', nil)}

  it { should have_valid(:art_type).when(ArtType.new) }
  it { should_not have_valid(:art_type).when(nil) }

  it { should have_valid(:available_for_purchase).when(true) }
  it { should_not have_valid(:available_for_purchase).when(nil) }

  it { should have_valid(:collection).when(Collection.new) }
  it { should_not have_valid(:collection).when(nil) }

  it { should have_valid(:artist).when(Artist.new) }
  it { should_not have_valid(:artist).when(nil) }
  
end
