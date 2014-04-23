class AddFieldRecipeToUser < ActiveRecord::Migration
  def change
    add_column :users, :recipe, :string
  end
end
