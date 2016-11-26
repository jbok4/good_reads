class BookSerializer
  def self.serialize(book)
 
    # start with the open brace to create a valid JSON object
    serialized_book = '{'
 
    serialized_book += '"id": ' + book.id.to_s + ', '
    serialized_book += '"title": "' + book.title + '", '
    serialized_book += '"description": "' + book.description + '", '
 
    # the author association can also be represented in JSON
    serialized_book += '"author": {'
    serialized_book += '"name": "' + book.author.name + '"}'
 
    # and end with the close brace
    serialized_book += '}'
  end
end
