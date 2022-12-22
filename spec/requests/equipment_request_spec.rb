require 'rails_helper'

RSpec.describe "Equipment", type: :request do
  describe "GET#index" do
    context 'when the equipment are listed' do
      let(:local) { create(:local) }
      let(:equipment) { create_list(:equipment, 3, local_id: local.id) }

      before do
        equipment

        get '/equipment'
      end

      it 'must return 200 status code' do
        expect(response).to have_http_status(:ok)
      end

      it 'must return the equipment attributes' do
        expect(json_body[0]).to include(:name, :brand, :equipment_type, :code)
      end
    end
  end
end
