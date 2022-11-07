class CreateGyms < ActiveRecord::Migration[7.0]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :cnpj
      t.string :phone_number
      t.string :address
      t.float :registration_fee
      t.float :montlhy_fee
      t.string :site
      t.string :instagram
      t.string :facebook

      t.timestamps
    end
  end
end
