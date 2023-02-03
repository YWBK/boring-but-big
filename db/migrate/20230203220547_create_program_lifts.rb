class CreateProgramLifts < ActiveRecord::Migration[7.0]
  def change
    create_table :program_lifts do |t|
      t.integer :program_id, null: false
      t.integer :lift_id, null: false

      t.timestamps
    end

    add_index :program_lifts, :program_id
    add_index :program_lifts, :lift_id
    add_index :program_lifts, [:program_id, :lift_id], unique: true
  end
end
