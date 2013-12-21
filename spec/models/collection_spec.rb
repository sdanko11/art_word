require 'spec_helper'

describe Collection do

  it { should have_valid(:name).when('steve danko', 'hollla', 'bugahti') }
  it { should_not have_valid(:name).when('', nil) }

end
