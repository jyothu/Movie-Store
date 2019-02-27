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
     expect(user.fullname).to eql("#{user.first_name} #{user.last_name}")
   end
end
