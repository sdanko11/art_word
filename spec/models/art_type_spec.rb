require 'spec_helper'

describe ArtType do
  pending "add some examples to (or delete) #{__FILE__}"

   it { should have_valid(:name).when('awesome', 'classic', 'neverland') }
   it { should_not have_valid(:name).when('', nil)}

   it { should belong_to(:artist) }
   
end
