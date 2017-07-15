class AddUsernameToUsers < ActiveRecord::Migration
  def change #anything outside of this method, is translated into SQL and modifies the database
    add_column :users, :username, :string #add a new column of username strings to the user table
    add_index :users, :username, unique: true #index username in user table. make sure all usernames are unique
  end
end
