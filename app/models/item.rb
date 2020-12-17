class Item < ApplicationRecord
    has_many :purchases
    belongs_to :user
    has_many :users, through: :purchases
   
end
