class CreateLifts < ActiveRecord::Migration[7.0]
  def change
    create_table :lifts do |t|
      t.string :name, null: false

      t.timestamps
    end

    add_index :lifts, :name
  end
end
