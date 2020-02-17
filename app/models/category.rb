class Category < ApplicationRecord
  has_many :category_boards
  has_many :boards, through: :category_boards
end
