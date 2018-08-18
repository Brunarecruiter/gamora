class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :email
      t.boolean :ppd

      t.timestamps
    end
  end
end
