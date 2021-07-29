class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :cid
      t.string :department
      t.string :course_num
      t.string :sec_num
      t.string :professor
      t.string :semester
      t.string :year

      t.timestamps
    end
    add_index :courses, :cid, unique: true
  end
end
