class CreateCourseMemberships < ActiveRecord::Migration
  def change
    create_table :course_memberships do |t|
      t.string :course_id
      t.string :student_id

      t.timestamps
    end
  end
end
