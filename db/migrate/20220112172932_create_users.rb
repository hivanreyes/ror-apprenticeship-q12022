class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone_number
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end