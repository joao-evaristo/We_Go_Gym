class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.integer :idade
      t.text :telefone
      t.text :email

      t.timestamps
    end
  end
end
