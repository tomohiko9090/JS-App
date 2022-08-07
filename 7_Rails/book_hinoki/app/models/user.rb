class User < ApplicationRecord
    before_save{ self.email.downcase! }
    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 },
                format:{with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i},
                uniqueness: {case_sensitive: false}
    has_secure_password
    has_many :books
    has_many :likes
    has_many :like_books, through: :likes, source: :book
   
    # お気に入り登録
    def like(book_id)
        if self.like?(book_id)
            return false
        end
        self.likes.create(book_id: book_id)
    end

    # お気に入り削除
    def unlike(book_id)
        if !self.like?(book_id)
            return false
        end
        like = self.likes.find_by(book_id: book_id)
        like.destroy 
    end

    # お気に入り中かどうか
    def like?(book_id)
        self.likes.where(book_id: book_id).exists?
    end
end