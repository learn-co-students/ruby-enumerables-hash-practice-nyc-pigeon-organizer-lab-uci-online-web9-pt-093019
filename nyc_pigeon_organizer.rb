require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
 new_hash = {}
 hash_by_color = {}
 
 data.each do |attribute, data_hash|
  data[attribute].each do |data_hash_attribute, name_array|
   
   i = 0 
    while i < name_array.length do
   
      pigeon_name = name_array[i]
 
      if new_hash.has_key?(pigeon_name) && new_hash[pigeon_name].has_key?(attribute)
     
          new_hash[pigeon_name][attribute] << "#{data_hash_attribute}"
          # binding.pry
       elsif new_hash.has_key?(pigeon_name)
      
           new_hash[pigeon_name][attribute] = ["#{data_hash_attribute}"]
     
          # new_hash[pigeon_name] => [attribute]
          #binding.pry
       else
          new_hash[pigeon_name] = {attribute => ["#{data_hash_attribute}"] }
      end
     #binding.pry
    
    i += 1 
   end
    
  
 end
  
  #binding.pry
  
end
  
  
  
  
  
  
  
 new_hash
end 
