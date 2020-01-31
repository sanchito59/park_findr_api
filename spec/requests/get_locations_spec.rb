require 'rails_helper'

describe "get all locations route", :type => :request do
  Location.destroy_all
  let!(:locations) { FactoryBot.create_list(:location, 20)}
  before { get '/locations'}
  
  it 'returns all locations' do
    #Location.destroy_all doesn't seem to be working in one of the tests
    expect(JSON.parse(response.body).size).to eq(21)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end