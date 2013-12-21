require 'spec_helper'

describe Customer do

  it { should have_valid(:name).when('steve danko', 'hollla', 'bugahti') }
  it { should_not have_valid(:name).when('', nil) }

  it { should have_valid(:total_spent).when(22.22, 30.00, 88.88) }
  it { should_not have_valid(:total_spent).when('', nil) }

  it { should have_one(:favorite_collection) }
  it { should have_many(:art_pieces).through(:purchases) }

end
