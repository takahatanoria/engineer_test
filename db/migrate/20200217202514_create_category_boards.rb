class CreateCategoryBoards < ActiveRecord::Migration[5.2]
  def change
    create_table :category_boards do |t|
      t.references :category, foreign_key: true
      t.references :board, foreign_key: true
      t.timestamps
    end
  end
end
