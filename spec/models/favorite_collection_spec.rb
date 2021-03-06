require 'spec_helper'

describe FavoriteCollection do

  it { should belong_to(:customer) }

  it { should have_valid(:name).when("steve", "billy bob") }
  it { should_not have_valid(:name).when('', nil) }

  it {should have_valid(:customer).when(Customer.new) }
  it {should_not have_valid(:customer).when(nil)}

end
