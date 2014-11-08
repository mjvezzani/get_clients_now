require 'rails_helper'

describe Client do
  before :each do
    @client = Client.new(name: 'RedFoo', email: 'red.foo@foo.com', phone: '555-555-5555')
  end
  it 'is valid with name, email, phone, and address' do
    expect(@client).to be_valid
  end
  it 'is invalid with no name' do
    @client.name = nil
    expect(@client).to be_invalid
  end
  it 'is invalid with no email' do
    @client.email = nil
    expect(@client).to be_invalid
  end
  it 'is invalid with no phone' do
    @client.phone = nil
    expect(@client).to be_invalid
  end
end
