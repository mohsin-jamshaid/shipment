class AddMarkupKeyRefToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clients, :markup_key, :string
    add_foreign_key :clients, :markupkeys, column: :markup_key, primary_key: 'markup_key'
    add_index :clients, :markup_key, unique: true
  end
end
