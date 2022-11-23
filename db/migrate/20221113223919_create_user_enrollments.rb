class CreateUserEnrollments < ActiveRecord::Migration[7.0]
  def change
    create_table :user_enrollments do |t|
      t.boolean :active
      t.references :usuario, null: false, foreign_key: true
      t.references :academium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
