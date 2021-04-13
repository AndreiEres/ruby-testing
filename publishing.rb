class Book
  attr_reader :title, :author, :released_at

  def initialize(title, author)
    @title = title
    @author = author
    @released_at = nil
  end

  # def full_title
  #   [author, title].join('. ')
  # end

  # def release_on(date)
  #   @released_at = date
  # end
end

# class Author
#   attr_reader :first_name, :last_name
#
#   def initialize(first_name, last_name)
#     @first_name = first_name
#     @last_name = last_name
#   end
#
#   def full_name
#     [first_name, last_name].join(' ')
#   end
# end

# class Project
#   attr_reader :book
#
#   def initialize(book)
#     @book = book
#   end
#
#   def release
#     book.release_on(Date.today)
#   end
# end
