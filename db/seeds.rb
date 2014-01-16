require 'csv'

csv = {
  'enrollment' => nil
}

csv.each do |key, val|
  csv[key] = CSV.read('app/assets/csv/' + key + '.csv', {:headers => true, :return_headers => true, :header_converters => :symbol, :converters => :all} )
end

csv['enrollment'].each { |row|
  puts row
}
