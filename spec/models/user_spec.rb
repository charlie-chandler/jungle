require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do
    user = User.new(first_name: 'Charlie', last_name: 'Chandler', email: 'charlie@test.com', password: '123', password_confirmation: '123')

    it 'must have password' do
      expect(user.password).to_not be nil
  end

  it 'must have a password and password confirmation that match' do
    expect(user.password).to eq(user.password_confirmation)
  end

  it 'must have a unique email' do
    expect(User.where(email: user.email).count).to eq(1)
  end

  it 'must have a first name, last name and email' do
    expect(user.first_name).to_not be nil
    expect(user.last_name).to_not be nil
    expect(user.email).to_not be nil
  end

  it 'must have a password with at least three characters' do
    expect(user.password.length).to be >= 3
  end
 end



 describe '.authenticate_with_credentials' do

  it 'successfully logs in user when given valid credentials' do
    user = User.new(first_name: 'Charlie', last_name: 'Chandler', email: 'charlie@test.com', password: '123', password_confirmation: '123')
    user.save

    authenticated_user = User.authenticate_with_credentials(user.email, user.password)
    expect(authenticated_user).to_not be nil
 end

  
  it 'must ignore trailing white space before authentication' do 
    user = User.new(first_name: 'Charlie', last_name: 'Chandler', email: '   charlie@test.com   ', password: '123', password_confirmation: '123')
    user.save

    authenticated_user = User.authenticate_with_credentials(user.email, user.password)
    expect(authenticated_user.email).to eq(user.email.strip)
 end

 it 'must authenticate email addresses with incorrect case characters' do 
  user = User.new(first_name: 'Charlie', last_name: 'Chandler', email: 'cHaRlIe@tESt.COm', password: '123', password_confirmation: '123')
  user.save

  authenticated_user = User.authenticate_with_credentials(user.email, user.password)
  expect(authenticated_user.email).to eq(user.email.downcase)
 end


  end
end
