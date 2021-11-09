class AddColumnToReview < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :reviewer, null: false, foreign_key: {to_table: :users}
    add_reference :reviews, :reviewee, null: false, foreign_key: {to_table: :users}
  end
end
