class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :url
      t.belongs_to :article, index: true

      t.timestamps null: false
    end
    add_foreign_key :links, :articles
  end
end
