class Group < ApplicationRecord
  belongs_to :user
  has_many :exchanges, through: :group_exchange_relations
  validates :name, presence: true, length: { maximum: 50 }
  # postponded upload use shrine
end
