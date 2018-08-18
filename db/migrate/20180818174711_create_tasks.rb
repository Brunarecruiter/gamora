class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :max_hours
      t.text :description

      t.timestamps
    end
  end
end
