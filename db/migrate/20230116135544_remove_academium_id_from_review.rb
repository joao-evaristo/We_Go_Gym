class RemoveAcademiumIdFromReview < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :academium_id, :integer
  end
end
