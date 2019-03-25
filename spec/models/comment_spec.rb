# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  movie_id   :integer
#  review     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Comment do
  it 'should belong to User' do
    should belong_to(:user)
  end
  it 'should belong to Movie' do
    should belong_to(:movie)
  end
end
