class Equipment::Index::EquipmentSerializer < ActiveModel::Serializer
  attributes :name, :brand, :equipment_type, :code
end
