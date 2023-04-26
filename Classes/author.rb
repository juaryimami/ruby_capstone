require 'securerandom'

class Author
  attr_accessor :items
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name, id)
    @id = @id = id || rand(1..1000)
    @first_name = first_name
    @last_name = last_name
    @items = []
  end

  def add_item(item)
    @items << item
    item.author = self
  end
end