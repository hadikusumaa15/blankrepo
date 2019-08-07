json.extract! my_sql, :id, :title, :Content, :created_at, :updated_at
json.url my_sql_url(my_sql, format: :json)
