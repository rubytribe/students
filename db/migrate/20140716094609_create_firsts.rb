class CreateFirsts < ActiveRecord::Migration
  def change
    create_table :firsts do |t|
      t.string :name
      t.string :Last
      t.string :name
      t.date :birthday

      t.timestamps
    end
  end
end
