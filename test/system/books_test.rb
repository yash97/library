require "application_system_test_case"

class BooksTest < ApplicationSystemTestCase
  setup do
    @book = books(:one)
  end

  test "visiting the index" do
    visit books_url
    assert_selector "h1", text: "Books"
  end

  test "creating a Book" do
    visit books_url
    click_on "New Book"

    fill_in "Associated library", with: @book.associated_library
    fill_in "Author", with: @book.author
    fill_in "Edition", with: @book.edition
    fill_in "Image url", with: @book.image_url
    fill_in "Isbn", with: @book.isbn
    fill_in "Language", with: @book.language
    fill_in "Published", with: @book.published
    check "Special item" if @book.special_item
    fill_in "Subject of book", with: @book.subject_of_book
    fill_in "Summary", with: @book.summary
    fill_in "Title", with: @book.title
    click_on "Create Book"

    assert_text "Book was successfully created"
    click_on "Back"
  end

  test "updating a Book" do
    visit books_url
    click_on "Edit", match: :first

    fill_in "Associated library", with: @book.associated_library
    fill_in "Author", with: @book.author
    fill_in "Edition", with: @book.edition
    fill_in "Image url", with: @book.image_url
    fill_in "Isbn", with: @book.isbn
    fill_in "Language", with: @book.language
    fill_in "Published", with: @book.published
    check "Special item" if @book.special_item
    fill_in "Subject of book", with: @book.subject_of_book
    fill_in "Summary", with: @book.summary
    fill_in "Title", with: @book.title
    click_on "Update Book"

    assert_text "Book was successfully updated"
    click_on "Back"
  end

  test "destroying a Book" do
    visit books_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book was successfully destroyed"
  end
end
