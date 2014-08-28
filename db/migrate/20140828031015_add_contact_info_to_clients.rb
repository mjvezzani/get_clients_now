class AddContactInfoToClients < ActiveRecord::Migration
  def change
    add_column :clients, :date_of_first_contact, :date
    add_column :clients, :where_contacted, :string
    add_column :clients, :history_item, :text
  end
end
