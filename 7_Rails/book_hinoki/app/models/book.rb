class Book < ApplicationRecord
    validates :title, presence: true, length: { maximum: 100 }
    validates :author, length: { maximum: 100 }
    validates :publisher, length: { maximum: 100 }
    belongs_to :user
    has_many :likes
end
