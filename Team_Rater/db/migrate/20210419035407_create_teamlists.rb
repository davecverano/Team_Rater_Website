class CreateTeamlists < ActiveRecord::Migration[6.1]
  def change
    create_table :teamlists do |t|
	  t.string :student_email
	  t.integer :team_id
      t.timestamps
    end
  end
end
