class CreateCoursesStudents < ActiveRecord::Migration
  def change
    create_table :courses_students do |t|
    
      t.timestamps
    end
  end
end
