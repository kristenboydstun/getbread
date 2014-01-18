require 'spec_helper'

describe Event do

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:host_name) }
  it { should validate_presence_of(:host_email) }
  it { should validate_presence_of(:start_date) }

end
