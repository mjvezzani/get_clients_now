require 'rails_helper'

describe User do
  before :each do
    @user = User.new(username: 'foo', password: 'bar', password_confirmation: 'bar')
  end
  it 'is valid with a username, password, and password confirmation' do
    expect(@user).to be_valid
  end
  it 'is invalid without a username' do
    @user.username = nil
    expect(@user).to be_invalid
  end
  it 'is invalid without a password' do
    @user.password = nil
    expect(@user).to be_invalid
  end
end
