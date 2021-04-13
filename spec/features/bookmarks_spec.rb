# feature 'Bookmarks' do
#   scenario 'Add a book to bookmarks' do
#     visit book_path(book)
#
#     bookmark_button.click
#
#     expect(book_title).to have_bookmarked_icon
#
#     visit books_path
#
#     expect(bookmarks_list).to have_bookmarked_book(book)
#   end
# end

# let(:book) { create(:book) }
# let(:bookmark_button) { find_css('.bookmark_button') }

# def have_bookmarked_icon
#   have_css('...')
# end

# def have_bookmarked_book(_book)
#   have_link('...')
# end
