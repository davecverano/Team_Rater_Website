class CreateAdmins < ActiveRecord::Migration[6.1]
  def change
    create_table :admins do |t|
      t.string :fname
      t.string :lname
      t.string :username
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :admins, :email, unique: true
  end
end
