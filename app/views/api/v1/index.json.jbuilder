@quotes.each do |quote|
  json.id quote.id
  json.quote quote.quote
  json.person quote.person
end