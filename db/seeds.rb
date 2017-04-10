# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

countries = Country.create([
  { name: 'United States', code: 'USA'}
  ])

states = State.create([
  {  name: 'Alabama', code: 'AL' , country_id: countries.first.id },
  {  name: 'Alaska', code: 'AK' , country_id: countries.first.id },
  {  name: 'Arizona', code: 'AZ' , country_id: countries.first.id },
  {  name: 'Arkansas', code: 'AR' , country_id: countries.first.id },
  {  name: 'California', code: 'CA' , country_id: countries.first.id },
  {  name: 'Colorado', code: 'CO' , country_id: countries.first.id },
  {  name: 'Connecticut', code: 'CT' , country_id: countries.first.id },
  {  name: 'Delaware', code: 'DE' , country_id: countries.first.id },
  {  name: 'District of Columbia', code: 'DC' , country_id: countries.first.id },
  {  name: 'Florida', code: 'FL' , country_id: countries.first.id },
  {  name: 'Georgia', code: 'GA' , country_id: countries.first.id },
  {  name: 'Hawaii', code: 'HI' , country_id: countries.first.id },
  {  name: 'Idaho', code: 'ID' , country_id: countries.first.id },
  {  name: 'Illinois', code: 'IL' , country_id: countries.first.id },
  {  name: 'Indiana', code: 'IN' , country_id: countries.first.id },
  {  name: 'Iowa', code: 'IA' , country_id: countries.first.id },
  {  name: 'Kansas', code: 'KS' , country_id: countries.first.id },
  {  name: 'Kentucky', code: 'KY' , country_id: countries.first.id },
  {  name: 'Louisiana', code: 'LA' , country_id: countries.first.id },
  {  name: 'Maine', code: 'ME' , country_id: countries.first.id },
  {  name: 'Maryland', code: 'MD' , country_id: countries.first.id },
  {  name: 'Massachusetts', code: 'MA' , country_id: countries.first.id },
  {  name: 'Michigan', code: 'MI' , country_id: countries.first.id },
  {  name: 'Minnesota', code: 'MN' , country_id: countries.first.id },
  {  name: 'Mississippi', code: 'MS' , country_id: countries.first.id },
  {  name: 'Missouri', code: 'MO' , country_id: countries.first.id },
  {  name: 'Montana', code: 'MT' , country_id: countries.first.id },
  {  name: 'Nebraska', code: 'NE' , country_id: countries.first.id },
  {  name: 'Nevada', code: 'NV' , country_id: countries.first.id },
  {  name: 'New Hampshire', code: 'NH' , country_id: countries.first.id },
  {  name: 'New Jersey', code: 'NJ' , country_id: countries.first.id },
  {  name: 'New Mexico', code: 'NM' , country_id: countries.first.id },
  {  name: 'New York', code: 'NY' , country_id: countries.first.id },
  {  name: 'North Carolina', code: 'NC' , country_id: countries.first.id },
  {  name: 'North Dakota', code: 'ND' , country_id: countries.first.id },
  {  name: 'Ohio', code: 'OH' , country_id: countries.first.id },
  {  name: 'Oklahoma', code: 'OK' , country_id: countries.first.id },
  {  name: 'Oregon', code: 'OR' , country_id: countries.first.id },
  {  name: 'Pennsylvania', code: 'PA' , country_id: countries.first.id },
  {  name: 'Puerto Rico', code: 'PR' , country_id: countries.first.id },
  {  name: 'Rhode Island', code: 'RI' , country_id: countries.first.id },
  {  name: 'South Carolina', code: 'SC' , country_id: countries.first.id },
  {  name: 'South Dakota', code: 'SD' , country_id: countries.first.id },
  {  name: 'Tennessee', code: 'TN' , country_id: countries.first.id },
  {  name: 'Texas', code: 'TX' , country_id: countries.first.id },
  {  name: 'Utah', code: 'UT' , country_id: countries.first.id },
  {  name: 'Vermont', code: 'VT' , country_id: countries.first.id },
  {  name: 'Virginia', code: 'VA' , country_id: countries.first.id },
  {  name: 'Washington', code: 'WA' , country_id: countries.first.id },
  {  name: 'West Virginia', code: 'WV' , country_id: countries.first.id },
  {  name: 'Wisconsin', code: 'WI' , country_id: countries.first.id },
  {  name: 'Wyoming', code: 'WY' , country_id: countries.first.id }
  ])
