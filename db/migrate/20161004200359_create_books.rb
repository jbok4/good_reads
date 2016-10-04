class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.string :author
      t.integer :pages
      t.string :published

      t.timestamps null: false
    end
  end
end
