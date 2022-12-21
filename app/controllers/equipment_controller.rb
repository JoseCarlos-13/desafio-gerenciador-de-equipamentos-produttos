class EquipmentController < ApplicationController
  def index
    equipment = Equipment.all

    render json: equipment,
           each_serializer: Equipment::Index::EquipmentSerializer,
           status: :ok
  end
end
