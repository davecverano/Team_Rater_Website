class CreateClasslists < ActiveRecord::Migration[6.1]
  def change
    create_table :classlists do |t|
	  t.integer :class_id
	  t.string :student_email
      t.timestamps
    end
  end
end
