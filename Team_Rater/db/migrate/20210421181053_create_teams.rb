class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :tid
      t.string :tname
      t.string :cid

      t.timestamps
    end
    add_index :teams, :tid, unique: true
  end
end
