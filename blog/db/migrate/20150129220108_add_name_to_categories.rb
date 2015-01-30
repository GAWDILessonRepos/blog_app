class AddNameToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :name, :string
    add_column :articles, :category_id, :integer
  end
end
