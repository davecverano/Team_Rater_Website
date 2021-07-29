json.extract! course, :id, :cid, :department, :course_num, :sec_num, :professor, :semester, :year, :created_at, :updated_at
json.url course_url(course, format: :json)
