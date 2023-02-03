class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.integer :user_id, null: false
      t.integer :program_id, null: false
      t.string :status, default: 'incompleted', null: false 
      t.integer :day, null: false
      t.integer :week, null: false
      t.integer :cycle, null: false
  
      t.timestamps
    end

    add_index :workouts, :user_id
    add_index :workouts, :program_id
    add_index :workouts, :day
    add_index :workouts, :week
    add_index :workouts, :cycle
  end
end
