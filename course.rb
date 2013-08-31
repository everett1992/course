# class.rb
class Course
  attr_reader :title, :notes, :book
  def initialize title, notes, book
    @title = title
    @notes = notes
    @book = book
  end
end

