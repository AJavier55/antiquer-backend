class User < ApplicationRecord
     has_many :purchases
     has_many :items, through: :purchases
     validates :username, uniqueness: { case_sensitive: false }
end
