class AddAcademiaToReview < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :academium, null: false, foreign_key: true
  end
end
