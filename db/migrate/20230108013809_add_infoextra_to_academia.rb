class AddInfoextraToAcademia < ActiveRecord::Migration[7.0]
  def change
    add_column :academia, :infoextra, :string
  end
end
