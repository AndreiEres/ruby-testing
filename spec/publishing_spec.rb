require 'date'
require_relative '../publishing'

describe Book do
  describe '#full_title' do
    let(:book) { create(:book) }

    it 'combines author name and book title' do
      author = instance_double(Author, full_name: 'Alan Milne')
      book = Book.new('Winnie-the-Pooh', author)

      expect(book.full_title).to eq('Alan Milne. Winnie-the-Pooh')
    end
  end

  describe '#release_on' do
    it 'sets released date' do
      date = Date.new(2020, 2, 2)
      book = Book.new('Winnie-the-Pooh', 'Alan Milne')

      expect { book.release_on(date) }.to change(book, :released_at).to(date)
    end
  end
end

describe Author do
  describe '#full_name' do
    context 'when author has no middle name' do
      it 'combines first and last names' do
        author = Author.new('Alan', 'Milne')

        expect(author.full_name).to eq('Alan Milne')
      end
    end

    context 'when author has middle name' do
      it 'combine first name, initial of middle ...'
    end
  end
end

describe Project do
  describe '#release' do
    let(:book) { Book.new('Winnie-the-Pooh', 'Alan Milne') }

    # before(:all) {}
    # before(:each) { travel_to date }
    #
    # after { travel_back }

    it 'releases the book today' do
      project = Project.new(book)

      allow(book).to receive(:release_on)
      # allow_any_instance_of(Date).to receive(:today).and(date)

      project.release

      expect(book).to have_received(:release_on)
    end

    it 'notify author about release'
    it 'opens preorder for book'

    context 'when book is already released' do
      before { book.release_on(Date.today) }

      it 'raises error'
    end
  end
end

# create(:user, name: 'Alan')
#
# require 'faker'
#
# FactoryBot.define do
#   factory :user do
#     first_name { Faker::Name.unique.first_name }
#     last_name  { 'Doe' }
#     admin { false }
#
#     sequence(:email) { |n| "person#{n}@example.com" }
#   end
# end
