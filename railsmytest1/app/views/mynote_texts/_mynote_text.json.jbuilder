json.extract! mynote_text, :id, :keyword1, :keyword2, :created_at, :updated_at
json.url mynote_text_url(mynote_text, format: :json)
