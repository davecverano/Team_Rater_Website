class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :students, :email, unique: true
  end
end
