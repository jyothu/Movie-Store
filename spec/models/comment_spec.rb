require 'spec_helper'

describe Comment do
  it 'should belong to User' do
    should belong_to(:user)
  end
  it 'should belong to Movie' do
    should belong_to(:movie)
  end
end
