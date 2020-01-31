require 'rails_helper'

describe "get all locations route", :type => :request do
  Location.destroy_all
  puts Location.all
  let!(:locations) { FactoryBot.create_list(:location, 20)}
  before { get '/locations'}

  it 'returns all locations' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end