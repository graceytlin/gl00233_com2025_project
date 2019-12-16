class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.belongs_to :timesheet, index: true, foreign_key: true, null: false
      t.date :date, null: false
      t.time :start_time, null: false
      t.time :end_time, null: false
      t.boolean :paid, null: false, :default => false
      t.timestamp :clock_in, null: true
      t.timestamp :clock_out, null: true

      t.timestamps null: false
    end
  end
end
