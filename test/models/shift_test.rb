require 'test_helper'

class ShiftTest < ActiveSupport::TestCase
  
  test 'should not save invalid shift' do
    shift = Shift.new
    shift.save
    refute shift.valid?
  end

end
