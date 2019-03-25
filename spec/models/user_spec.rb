# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  admin                  :boolean          default(FALSE)
#  first_name             :string
#  last_name              :string
#

require 'spec_helper'

describe User do
  let!(:user) { FactoryGirl.build(:user) }

  it 'has a valid factory' do
    FactoryGirl.create(:user).should be_valid
  end

  it 'is invalid without a firstname' do
    user.first_name = nil
    expect(user).not_to be_valid
  end

  it 'is invalid without a lastname' do
    user.last_name = nil
    expect(user).not_to be_valid
  end

  it 'is invalid without a email' do
    user.email = nil
    expect(user).not_to be_valid
  end

  it 'is invalid without a password' do
    user.password = nil
    expect(user).not_to be_valid
  end

  it 'returns a user full name as a string' do
    expect(user.full_name).to eql("#{user.first_name} #{user.last_name}")
  end
end
