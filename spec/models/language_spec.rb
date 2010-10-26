require 'spec_helper'

describe Language do
  it { should have_db_column(:name).of_type(:string) }
end
