class AddDetailsToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :username, :string, null: false
    add_column :clients, :city, :string, null: false
    add_column :clients, :contact_number, :string, null: false
  end
end
