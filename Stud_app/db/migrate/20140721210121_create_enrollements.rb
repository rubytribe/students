class CreateEnrollements < ActiveRecord::Migration
  def change
    create_table :enrollements do |t|
      t.integer :stud_id
      t.integer :course_id

      t.timestamps
    end
  end
end
