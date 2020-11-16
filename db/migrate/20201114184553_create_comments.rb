class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :popost_id: st, null: false, index: true, foreign_key: true
      t.belongs_to :author, null: false, index: true, foreign_key: { to_table: :users }
      t.text :body      

      t.timestamps
    end
  end
end