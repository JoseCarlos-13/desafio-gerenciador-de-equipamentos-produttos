class Local < ApplicationRecord
  has_many :equipment, dependent: :destroy

  validates :name, presence: true
end
