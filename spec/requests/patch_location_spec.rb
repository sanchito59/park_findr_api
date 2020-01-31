require 'rails_helper'

describe "patch a location route", :type => :request do
    Location.destroy_all
    location = Location.create!(:continent => "North America", :country => "USA", :city => "Original City", :community => "Arbol", :latitude => 45.244, :longitude => 123.233, :street_address => '1312 Brisket Boulevard')
  before { get '/locations'}

  # after(:all) do
  #   Destination.destroy_all
  # end

  it 'changes a location\'s city' do
    put "/locations/#{location.id}", params: { :continent => "North America", :city => "New City", :country => "USA", :community => "Arbol", :latitude => 45.244, :longitude => 123.233, :street_address => '1312 Brisket Boulevard' }
    expect(JSON.parse(response.body)['message']).to eq ("This location has been updated successfully.")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end