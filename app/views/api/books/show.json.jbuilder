json.book do
  json.id @book.id
  json.title @book.title
  json.photo_url @book.photo_url
  json.price_in_cents (@book.price_in_cents).to_i
  json.price_in_cents (@book.price_in_cents).to_i
  json.formatted_amount number_to_currency((@book.price_in_cents).to_f/100)
    json.author do
      json.id @book.author.id
      json.first_name @book.author.first_name
      json.last_name @book.author.last_name
      json.Bio @book.author.Bio
    end
  end
