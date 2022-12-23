require 'rails_helper'

RSpec.describe "Locations", type: :request do
  describe "GET#index" do
    context 'when the locations are listed' do
      let!(:locations) { create_list(:local, 3) }

      before do
        locations

        get '/locations'
      end

      it 'must return 200 status code' do
        expect(response).to have_http_status(:ok)
      end

      it 'must return first location attributes' do
        expect(json_body[0]).to include(:name)
      end
    end
  end

  describe 'POST#create' do
    context 'when a local is created' do
      let!(:local_attributes) { attributes_for(:local, name: 'lalala') }

      before do
        post '/locations', params: { local: local_attributes }
      end

      it 'must return 201 status code' do
        expect(response).to have_http_status(:created)
      end

      it 'must return local created attributes' do
        expect(json_body).to include(:name)
      end
    end
  end
end
