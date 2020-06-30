class CreateIdentifiers < ActiveRecord::Migration[6.0]
  def change
    create_table :identifiers do |t|
      t.string "identifier_name"
      t.integer "identifier_value", default: 1, null: false
      t.timestamps
    end
  end
end
