require 'rails_helper'

RSpec.describe "EquipmentQuery", type: :query do
  context 'when i filter elements of the equipment list' do
    context 'by name' do
      let!(:params) { { name: 'equipment2' } }
      let!(:equipment1) { create(:equipment, name: 'equipment1') }
      let!(:equipment2) { create(:equipment, name: 'equipment2') }
      let!(:equipment3) { create(:equipment, name: 'equipment3') }

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
      let!(:equipment1) { create(:equipment, code: 321321321) }
      let!(:equipment2) { create(:equipment, code: 123123123) }
      let!(:equipment3) { create(:equipment, code: 147852369) }

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
      let!(:equipment1) { create(:equipment, name: 'equipment1', code: 321321321) }
      let!(:equipment2) { create(:equipment, name: 'equipment2', code: 123123123) }
      let!(:equipment3) { create(:equipment, name: 'equipment3', code: 147852369) }

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
  end
end