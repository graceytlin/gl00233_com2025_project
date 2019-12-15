class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.date :date, null:false
      t.time :start, null:false
      t.time :end, null:false

      t.timestamps
    end
  end
end
