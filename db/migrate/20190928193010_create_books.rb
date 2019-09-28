class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :author
      t.string :language
      t.date :published
      t.string :edition
      t.string :associated_library
      t.string :image_url
      t.string :subject_of_book
      t.text :summary
      t.boolean :special_item

      t.timestamps
    end
  end
end
