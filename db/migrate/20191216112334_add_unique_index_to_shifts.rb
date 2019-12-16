class AddUniqueIndexToShifts < ActiveRecord::Migration[5.2]
  def change
    add_index :shifts, [:date, :start_time, :end_time], unique: true
  end
end
