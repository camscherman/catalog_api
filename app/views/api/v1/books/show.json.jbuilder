
  json.id    @book.id
  json.title @book.title.capitalize
  json.description @book.description
  json.upc_code @book.upc_code
  json.genre  @book.catalog.name
