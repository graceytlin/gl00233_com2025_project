class AddEmployeesToTimesheets < ActiveRecord::Migration[5.2]
  def up
    add_reference :timesheets, :employee, index: true
    Timesheet.reset_column_information
    employee = Employee.first

    Timesheet.all.each do |timesheet|
      timesheet.employee_id = employee.id
      timesheet.save!
    end

    change_column_null :timesheets, :employee_id, false
    add_foreign_key :timesheets, :employees
  end

  def down
    remove_foreign_key :timesheets, :employees
    remove_reference :timesheets, :employees, index: true
  end
end
