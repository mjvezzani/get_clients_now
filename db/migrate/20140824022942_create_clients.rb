class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, :email, :phone
      t.integer :user_id

      t.timestamps
    end
  end
end
