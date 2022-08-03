class Product < ApplicationRecord
    validates :name, presence: true
    validates :price, numericality: { only_integer: true, allow_nil: true }
end