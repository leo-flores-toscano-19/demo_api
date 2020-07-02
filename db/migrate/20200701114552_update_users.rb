class UpdateUsers < ActiveRecord::Migration[6.0]
  def change
    add_column(:users, :provider, :string, limit: 60, null: false, default: '')
    add_column(:users, :uid, :string, limit: 250, null: false, default: '')
  end
end
