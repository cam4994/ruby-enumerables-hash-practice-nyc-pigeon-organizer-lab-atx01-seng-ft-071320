require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {} 
  unique_name = []
  data.each do |first_key, first_value|
    first_value.each do |key, array|
      array.each do |name|
        if unique_name.include?(name) == false
          new_hash[name.to_sym] = {}
          unique_name.push(name)
        end 
        if new_hash[name.to_sym][first_key] == nil 
          new_hash[name.to_sym][first_key] = []
        end 
        new_hash[name.to_sym][first_key].push(key.to_s)
      end
    end 
      binding.pry
  end 
end 
  new_hash


pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

nyc_pigeon_organizer(pigeon_data)
