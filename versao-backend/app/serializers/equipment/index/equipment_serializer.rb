class Equipment::Index::EquipmentSerializer < ActiveModel::Serializer
  attributes :name, :brand, :equipment_type, :code, :equipment_photo

  def equipment_photo
    object.equipment_photo_url
  end
end
