require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  
  test 'should not save invalid account' do
    employee = Employee.new
    employee.save
    refute employee.valid?
  end

  test 'should save valid employee' do
    employee = Employee.new
    employee.email = 'test@hello.com'
    employee.password = 'abcdefgh'
    employee.save
    assert employee.valid?
  end

end
