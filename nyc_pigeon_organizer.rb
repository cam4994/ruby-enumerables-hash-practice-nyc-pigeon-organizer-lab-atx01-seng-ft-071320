require 'pry'

def nyc_pigeon_organizer(data)
  new_hash = {} 
  unique_name = []
  data.each do |first_key, first_value|
    first_value.each do |key, array|
      array.each do |name|
        if unique_name.include?(name) == false
          new_hash[name] = {}
          unique_name.push(name)
        end 
        if new_hash[name][first_key] == nil 
          new_hash[name][first_key] = []
        end 
        new_hash[name][first_key].push(key.to_s)
      end
    end 
  end 
  new_hash
end 
 


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

