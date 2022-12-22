class Equipment < ApplicationRecord
	belongs_to :local

  validates :code, presence: true
	validates :name, presence: true
	validates :brand, presence: true
	validates :equipment_type, presence: true

	enum equipment_type: { air_conditioner: 0, coffee_machine: 1,
								         computer: 2, monitor: 3, mouse: 4,
								         keyboard: 5, television: 6, router: 7 }

end
