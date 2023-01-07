class CreateUserGymAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :user_gym_admins do |t|
      t.boolean :active
      t.references :usuario, null: false, foreign_key: true
      t.references :academium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
