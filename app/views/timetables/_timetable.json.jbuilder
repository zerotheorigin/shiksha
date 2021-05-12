json.extract! timetable, :id, :tt_day, :tt_period, :section_id, :subject_id, :created_at, :updated_at
json.url timetable_url(timetable, format: :json)
