class CreateStudentcourses < ActiveRecord::Migration
  def change
    create_table :studentcourses do |t|
      student_id :integer
      course_id :integer
      t.timestamps
    end
  end
end
