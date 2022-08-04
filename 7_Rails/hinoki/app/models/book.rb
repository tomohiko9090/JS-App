class Book < ApplicationRecord
    validates :title, presence: true, length: { maximum: 100 }
    validates :auther, length: { maximum: 100 }
    validates :publisher, length: { maximum: 100 }
    belongs_to :user
end
