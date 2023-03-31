class Exchange < ApplicationRecord
  belongs_to :user
  has_many :groups, through: :group_exchange_relations
  validates :name, presence: true, length: { maximum: 50 }
  validates :amount, numericality: { only_integer: true }
end
