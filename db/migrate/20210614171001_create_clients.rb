class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :full_name
      t.string :email
      t.string :telephone
      t.date :date_register

      t.timestamps
    end
  end
end
