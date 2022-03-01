class Search < ApplicationRecord
    validates :condition_name, presence: true, length: { maximum: 255 }

    belongs_to :user, optional: true

    has_many :favorites, dependent: :destroy
    has_many :likes, through: :favorites, source: :search
end
