class EquipmentController < ApplicationController
  def index
    equipment = EquipmentQuery.new(params).call

    equipment.includes(:local)

    render json: equipment,
           each_serializer: Equipment::Index::EquipmentSerializer,
           status: :ok
  end

  def create
    
  end

  private

  def equipment_params
    params.require(:equipment).permit(:name, :brand, :equipment_type,
                                      :code, :note, :local_id)
  end
end
