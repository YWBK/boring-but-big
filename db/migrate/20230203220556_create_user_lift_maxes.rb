class CreateUserLiftMaxes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_lift_maxes do |t|
      t.integer :user_id, null: false
      t.integer :lift_id, null: false
      t.integer :training_max, null: false
      t.string :unit, default: 'imperial', null: false

      t.timestamps
    end

    add_index :user_lift_maxes, :user_id
    add_index :user_lift_maxes, :lift_id
    add_index :user_lift_maxes, [:user_id, :lift_id], unique: true
    add_index :user_lift_maxes, :training_max
  end
end
