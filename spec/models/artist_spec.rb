require 'spec_helper'

describe Artist do
 
  it { should have_valid(:name).when('steve danko', 'hollla', 'bugahti') }
  it { should_not have_valid(:name).when('', nil)}

  it { should have_valid(:birthplace).when('chicago', 'this') }
  it { should_not have_valid(:birthplace).when(nil, '') }

  it {should have_valid(:art_type).when(ArtType.new)}
  it {should_not have_valid(:art_type).when(nil)}

end
