class CreateUserPrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :user_programs do |t|
      t.integer :user_id, null: false
      t.integer :program_id, null: false
      t.integer :split, null: false

      t.timestamps
    end

    add_index :user_programs, :user_id
    add_index :user_programs, :program_id
    add_index :user_programs, [:user_id, :program_id], unique: true
  end
end
