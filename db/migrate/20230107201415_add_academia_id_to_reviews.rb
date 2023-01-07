class AddAcademiaIdToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :academium_id, :integer
  end
end
