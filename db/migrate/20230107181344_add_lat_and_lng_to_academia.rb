class AddLatAndLngToAcademia < ActiveRecord::Migration[7.0]
  def change
    add_column :academia, :lat, :float
    add_column :academia, :lng, :float
  end
end
