class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :assigned
      t.string :due
      t.string :pid
      t.string :class
      t.string :class_id

      t.timestamps
    end
    add_index :projects, :pid, unique: true
  end
end
