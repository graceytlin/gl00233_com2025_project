class AddUniqueIndexToShifts < ActiveRecord::Migration[5.2]
  def change
    add_index :shifts, [:date, :start, :end], unique: true
  end
end
