class Book

  attr_reader :due_date
  attr_accessor :due_date

  @@on_shelf = []
  @@on_loan = []

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
    @borrowed = false
    @due_date = false
  end

  def self.create(title, author, isbn)
    new_book = Book.new(title, author, isbn)
    @@on_shelf << new_book
    return new_book #@@on_shelf.last
  end

  def self.available
    puts ".... #{@@on_shelf}"
    return @@on_shelf
  end

  def self.borrowed
    return @@on_loan
  end

  def self.browse
    return @@on_shelf.sample
  end

  def lent_out?
   if @borrowed == true
      return true
  else
    return false
    end
  end

  def self.current_due_date
  @due_date = Time.now + 3600
  return @due_date
  end

  def borrow
    if lent_out? == true
      return false
    else
      Book.current_due_date
      @@on_shelf.delete(self)
      @@on_loan << self
      return true
    end
  end


end

book1 = Book.create('Title1','Author1', '111')
book2 = Book.create('Title2','Author2', '222')

book1.borrow

puts Book.available
puts Book.borrowed
