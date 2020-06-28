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
 

