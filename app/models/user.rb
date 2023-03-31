class User < ApplicationRecord
    has_many :exchanges
    has_many :groups
    validates :name, presence: true, length: { maximum: 50 }
end
