require 'spec_helper'

describe Star do
  let!(:star) { FactoryGirl.build(:star) }

  it 'has a valid factory' do
    FactoryGirl.create(:star).should be_valid
  end

  it 'is invalid without name' do
    star.name = nil
    expect(star).not_to be_valid
  end

  it 'is invalid without role' do
    star.role = nil
    expect(star).not_to be_valid
  end

  it 'is invalid without age' do
    star.age = nil
    expect(star).not_to be_valid
  end
end
