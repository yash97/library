json.extract! book, :id, :isbn, :title, :author, :language, :published, :edition, :associated_library, :image_url, :subject_of_book, :summary, :special_item, :created_at, :updated_at
json.url book_url(book, format: :json)
