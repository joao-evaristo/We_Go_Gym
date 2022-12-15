class AddRoleToUsuario < ActiveRecord::Migration[7.0]
  def change
    add_column :usuarios, :role, :string
  end
end
