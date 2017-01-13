class CreateAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :prefix
      t.string :last_name
      t.string :author_img
      t.text :bio
      t.text :quotes

      t.timestamps
    end
  end
end
