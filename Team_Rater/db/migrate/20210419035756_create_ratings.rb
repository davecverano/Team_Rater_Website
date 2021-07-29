class CreateRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :ratings do |t|
	  t.string :author_email
	  t.string :recipient_email
	  t.string :comment
	  t.float :score
	  t.integer :proj_id
      t.timestamps
    end
  end
end
