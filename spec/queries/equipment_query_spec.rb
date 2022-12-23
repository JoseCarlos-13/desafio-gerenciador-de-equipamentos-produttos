require 'rails_helper'

RSpec.describe "EquipmentQuery", type: :query do
  context 'when i filter elements of the equipment list' do
    context 'by name' do
      let!(:params) { { name: 'equipment2' } }
      let!(:local) { create(:local) }
      let!(:equipment1) { create(:equipment, name: 'equipment1',
                                             local_id: local.id) }
      let!(:equipment2) { create(:equipment, name: 'equipment2',
                                             local_id: local.id) }
      let!(:equipment3) { create(:equipment, name: 'equipment3',
                                             local_id: local.id) }

      before do
        equipment1
        equipment2
        equipment3

        @query_list = EquipmentQuery.new(params).call
      end

      it 'must return the attribute name value' do
        expect(@query_list[0][:name]).to eq('equipment2')
      end
    end

    context 'by code' do
      let!(:params) { { code: 123123123 } }
      let!(:local) { create(:local) }
      let!(:equipment1) { create(:equipment, code: 321321321,
                                             local_id: local.id) }
      let!(:equipment2) { create(:equipment, code: 123123123,
                                             local_id: local.id) }
      let!(:equipment3) { create(:equipment, code: 147852369,
                                             local_id: local.id) }

      before do
        equipment1
        equipment2
        equipment3

        @query_list = EquipmentQuery.new(params).call
      end

      it 'must return the attribute code value' do
        expect(@query_list[0][:code]).to eq(123123123)
      end
    end

    context 'by all params' do
      let!(:params) { { name: 'equipment2', code: 123123123 } }
      let!(:local) { create(:local) }
      let!(:equipment1) { create(:equipment, name: 'equipment1',
                                             code: 321321321,
                                             local_id: local.id) }
      let!(:equipment2) { create(:equipment, name: 'equipment2',
                                             code: 123123123,
                                             local_id: local.id) }
      let!(:equipment3) { create(:equipment, name: 'equipment3',
                                             code: 147852369,
                                             local_id: local.id) }

      before do
        equipment1
        equipment2
        equipment3

        @query_list = EquipmentQuery.new(params).call
      end

      it 'must return the attribute code value' do
        expect(@query_list[0][:name]).to eq('equipment2')
        expect(@query_list[0][:code]).to eq(123123123)
      end
    end

    context 'by local name' do
      let!(:local) { create(:local, name: 'local1') }
      let!(:local2) { create(:local, name: 'local2') }
      let!(:params) { { local_name: 'local1' } }
      let!(:equipment1) { create(:equipment, name: 'equipment1',
                                             code: 321321321,
                                             local_id: local2.id) }
      let!(:equipment2) { create(:equipment, name: 'equipment2',
                                             code: 123123123,
                                             local_id: local.id) }
      let!(:equipment3) { create(:equipment, name: 'equipment3',
                                             code: 147852369,
                                             local_id: local2.id) }
      
      before do
        equipment1
        equipment2
        equipment3

        @query_list = EquipmentQuery.new(params).call
      end

      it 'must return equipments by local name' do
        expect(@query_list[0][:name]).to eq('equipment2')
      end
    end
  end
end