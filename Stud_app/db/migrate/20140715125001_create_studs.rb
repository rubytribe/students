class CreateStuds < ActiveRecord::Migration
  def change
    create_table :studs do |t|
      t.string :first_name
      t.string :string
      t.string :last_name
      t.date :birth_date
      t.string :email

      t.timestamps
    end
  end
end
