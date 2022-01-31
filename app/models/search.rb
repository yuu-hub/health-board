class Search < ApplicationRecord
     validates :condition_name, presence: true, length: { maximum: 255 }
end
