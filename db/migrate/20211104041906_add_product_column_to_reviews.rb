class AddProductColumnToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :product, null: false, foreign_key: {to_table: :products}
  end
end
