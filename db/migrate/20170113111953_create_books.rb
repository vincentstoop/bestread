class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.string :cover_img
      t.text :desc
      t.integer :pages
      t.string :isbn

      t.timestamps
    end
  end
end
