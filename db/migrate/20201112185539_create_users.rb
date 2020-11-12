class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, index: { unique: true }
      t.string :email
      
      t.timestamps
    end
    #add_index :users, :username, unique: true
  end
end
