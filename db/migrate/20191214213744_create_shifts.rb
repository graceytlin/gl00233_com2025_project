class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
