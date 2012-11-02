class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.string :name
      t.integer :twitter_account_id

      t.timestamps
    end
  end
end
