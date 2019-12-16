class CreateTimesheets < ActiveRecord::Migration[5.2]
  def change
    create_table :timesheets do |t|
      t.date :date_from, null: false
      t.date :date_to, null: false

      t.timestamps
    end
  end
end
