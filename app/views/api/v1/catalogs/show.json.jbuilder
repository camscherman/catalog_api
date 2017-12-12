json.catalog do
  json.name @catalog.name
  json.books @catalog.books do |book|
    json.id book.id
    json.title book.title
    json.price  book.price
  end
end
