class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.float :average_stars
      t.string :link
      t.string :genre

      t.timestamps
    end
  end
end
