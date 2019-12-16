require 'test_helper'

class ShiftTest < ActiveSupport::TestCase
  
  test 'should not save invalid shift' do
    shift = Shift.new
    shift.save
    refute shift.valid?
  end

  test 'should not save shift where shift time is invalid' do
    shift = Shift.new

    shift.start_time = Time('2019-12-16 11:22:38')
    shift.end_time = Time('2019-12-16 11:11:38')
    shift.date = Date('2019-12-16')
    shift.paid = false

    
    shift.save
    refute shift.valid?
  end

  test 'should save valid test' do
    shift = Shift.new

    shift.start_time = Time('2019-12-16 11:22:38')
    shift.end_time = Time('2019-12-16 11:55:38')
    shift.date = Date('2019-12-16')
    shift.paid = false

    
    shift.save
    assert shift.valid?
  end

end
