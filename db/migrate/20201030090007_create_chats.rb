class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.string     :first_name,   null: false
      t.references :hobic,        foreign_key: true
      t.references :user,         foreign_key: true
      t.references :room,         foreign_key: true
      t.timestamps
    end
  end
end
