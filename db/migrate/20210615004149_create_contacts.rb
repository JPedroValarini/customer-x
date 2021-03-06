class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :email
      t.string :telephone
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
