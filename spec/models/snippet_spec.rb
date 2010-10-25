require 'spec_helper'

describe Snippet do
  it { should have_db_column(:title).of_type(:string) }
  it { should have_db_column(:body).of_type(:text) }
end
