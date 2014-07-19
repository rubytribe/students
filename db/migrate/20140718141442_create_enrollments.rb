class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.string :student_id
      t.string :course_id

      t.timestamps
    end
  end
end
