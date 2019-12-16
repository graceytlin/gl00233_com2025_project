require 'test_helper'

class TimesheetTest < ActiveSupport::TestCase

  setup do
    @employee = employees(:one)
  end

  test 'should not save invalid timesheet' do
    timesheet = Timesheet.new
    timesheet.save
    refute timesheet.valid?
  end

  test 'should save valid timesheet' do
    timesheet = Timesheet.new
    timesheet.date_from = '2010-01-01'
    timesheet.date_to = '2011-01-01'
    timesheet.employee = @employee

    timesheet.save
    assert timesheet.valid?
  end

end
