class CreateTwitterAccounts < ActiveRecord::Migration
  def change
    create_table :twitter_accounts do |t|
      t.string :email
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
