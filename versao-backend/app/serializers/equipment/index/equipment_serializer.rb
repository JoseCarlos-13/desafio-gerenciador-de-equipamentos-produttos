class Equipment::Index::EquipmentSerializer < ActiveModel::Serializer
  # attributes :name, :brand, :equipment_type, :code, :equipment_photo, :local
  attributes :id, :name, :brand, :equipment_type, :code, :local

  # def equipment_photo
  #   object.equipment_photo_url
  # end

  def local
    object.local.name
  end
end
