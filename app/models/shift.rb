class Shift < ApplicationRecord

  belongs_to :timesheet

  validates :date, :start_time, :end_time, :paid, presence: true

  validates :date, uniqueness: { scope: [:start_time, :end_time] }

  validate :valid_end_time

  private

  def valid_end_time
      return if end_time.blank? || start_time.blank?

      if end_time <= start_time
          errors.add(:end_time, "must be after the start of the shift.")
      end
  end

  scope :employee_timesheets, -> (employee) { where(['employee_id = ?', employee_id])}
end
