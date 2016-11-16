class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :likeable_id
      t.string :likeable_type
      t.index :user_id
      t.index :likeable_id
      t.index :likeable_type

      t.timestamps
    end
  end
end
