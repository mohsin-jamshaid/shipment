class CreateMarkupkeys < ActiveRecord::Migration[6.0]
  def change
    create_table :markupkeys, id: false do |t|
      t.string :markup_key, primary_key: true
      t.timestamps
    end
  end
end
