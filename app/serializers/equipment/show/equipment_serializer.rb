class Equipment::Show::EquipmentSerializer < ActiveModel::Serializer
  attributes :name, :brand, :equipment_type, :code, :local, :note

  def local
    object.local
  end
end
