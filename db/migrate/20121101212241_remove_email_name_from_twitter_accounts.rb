class RemoveEmailNameFromTwitterAccounts < ActiveRecord::Migration
  def up
    remove_column :twitter_accounts, :email
  end

  def down
    add_column :twitter_accounts, :email, :String
  end
end
