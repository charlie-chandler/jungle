require 'rails_helper'

RSpec.describe User, type: :model do
  it 'must have password' do
    user = User.new(name: 'Charlie', email: 'charlie@test.com', password: '123', password_confirmation: '123')
    expect(user.password).to_not be nil
end

it 'must have a password and password confirmation that match' do
  user = User.new(name: 'Charlie', email: 'charlie@test.com', password: '123', password_confirmation: '123')
  expect(user.password).to eq(user.password_confirmation)
end

it 'must have a unique email' do
  user = User.new(name: 'Charlie', email: 'charlie@test.com', password: '123', password_confirmation: '123')
  expect(user.save).to be true
  expect(User.where(email: user.email).count).to eq(1)
end

it 'must have a name and email' do
  user = User.new(name: 'Charlie', email: 'charlie@test.com', password: '123', password_confirmation: '123')
  expect(user.save).to be true
end



end
