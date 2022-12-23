class EquipmentController < ApplicationController
  before_action :equipment, only: %i[update destroy]

  def index
    equipment = EquipmentQuery.new(params).call

    equipment.includes(:local)

    @pagy, equipment = pagy(
      equipment, page: params[:page],
                 items: params[:items]
    )

    render json: equipment,
           each_serializer: Equipment::Index::EquipmentSerializer,
           status: :ok
  end

  def create
    equipment = Equipment.new(equipment_params)

    if equipment.save
      render json: equipment,
             serializer: Equipment::Create::EquipmentSerializer,
             status: :created
    else
      render json: { message: equipment.errors.messages },
             status: :unprocessable_entity
    end
  end

  def update
    equipment.update!(equipment_params)

    head :no_content
  end

  def destroy
    equipment.destroy!

    head :no_content
  end

  private

  def equipment_params
    params.require(:equipment).permit(:name, :brand, :equipment_type,
                                      :code, :note, :local_id)
  end

  def equipment
    Equipment.find(params[:id])
  end
end
