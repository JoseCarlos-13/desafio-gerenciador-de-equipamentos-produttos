class Equipment::Index::EquipmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :equipment_type, :code
end
