class Timesheet < ApplicationRecord

    belongs_to :employee
    has_many :shifts, dependent: :destroy

    validates :date_from, :date_to, presence: true

    validates :date_from, uniqueness: { scope: [:date_to] }

    validate :valid_end_date

    private

    def valid_end_date
        return if date_to.blank? || date_to.blank?

        if date_to < date_from
            errors.add(:date_to, "must be after the start of the timesheet.")
        end
    end

    scope :employee_timesheets, -> (employee) { where(['employee_id = ?', employee_id])}
end
