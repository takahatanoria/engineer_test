class Board < ApplicationRecord
  belongs_to :user
  has_many :comments 
  has_many :category_boards
  has_many :categories, through: :category_boards
end
