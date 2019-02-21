require 'spec_helper'

describe Star do
  let!(:star) { FactoryGirl.build(:star) }

  it 'has a valid factory' do
    FactoryGirl.create(:star).should be_valid
  end

  it 'is invalid without a hero' do
    star.hero = nil
    expect(star).not_to be_valid
  end

  it 'is invalid without a hero' do
    star.hero = nil
    expect(star).not_to be_valid
  end

  it 'is invalid without a heroin' do
    star.heroin = nil
    expect(star).not_to be_valid
  end

  it 'is invalid without a director' do
    star.director = nil
    expect(star).not_to be_valid
  end

  it 'is invalid without a producer' do
    star.producer = nil
    expect(star).not_to be_valid
  end

  it 'is invalid without supporting cast' do
    star.producer = nil
    expect(star).not_to be_valid
  end
end