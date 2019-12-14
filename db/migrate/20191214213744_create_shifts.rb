class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.datetime :start, null:false
      t.datetime :end, null:false

      t.timestamps
    end
  end
end
