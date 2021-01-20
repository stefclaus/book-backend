class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :book_id
      t.string :body
      t.float :star_rating
      t.date :datetime
      t.integer :likes

      t.timestamps
    end
  end
end
