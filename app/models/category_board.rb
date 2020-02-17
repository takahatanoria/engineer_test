class CategoryBoard < ApplicationRecord
  belongs_to :category
  belongs_to :board
end
