class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
#   devise :database_authenticatable, :registerable,
#          :recoverable, :rememberable, :validatable
    before_save { self.email.downcase! }
    validates :name, presence: true, length: { maximum: 50 }
    validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
    has_secure_password
    
    has_many :searches, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_many :likes, through: :favorites, source: :search
    
    # お気に入り登録機能
    def like(search)
        self.favorites.find_or_create_by(search_id: search.id)
    end
    
    def unlike(search)
        favorite = self.favorites.find_by(search_id: search.id)
        favorite.destroy if favorite
    end
    
    def likes?(search)
        self.likes.include?(search)
    end
end