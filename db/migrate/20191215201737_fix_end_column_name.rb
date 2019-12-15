class FixEndColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :shifts, :start, :start_time
    rename_column :shifts, :end, :end_time
  end
end
