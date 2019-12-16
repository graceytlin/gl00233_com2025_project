json.extract! timesheet, :id, :date_from, :date_to, :created_at, :updated_at
json.url timesheet_url(timesheet, format: :json)
