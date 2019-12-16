json.extract! shift, :id, :timesheet_id, :date, :start_time, :end_time, :paid, :clock_in, :clock_out, :created_at, :updated_at
json.url shift_url(shift, format: :json)
