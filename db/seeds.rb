Flat.destroy_all
puts  "creating flats"

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'Light & Spacious ',
  address: '10 Clifton  1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 85,
  number_of_guests: 3
)
Flat.create!(
  name: 'Dark flat',
  address: 'plaza camachos nº3',
  description: 'A lovely summer feel ',
  price_per_night: 55,
  number_of_guests: 3
)
Flat.create!(
  name: 'flat fat',
  address: 'poeta vicente medina W9 1DT',
  description: 'a good flat in a nice area in Murcia city',
  price_per_night: 7,
  number_of_guests: 3
)


puts "done"
