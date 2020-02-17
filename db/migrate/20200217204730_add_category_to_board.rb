class AddCategoryToBoard < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :main_category, :integer
    add_column :boards, :sub_category, :integer
  end
end
