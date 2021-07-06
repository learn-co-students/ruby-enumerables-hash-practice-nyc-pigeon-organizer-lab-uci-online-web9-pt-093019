require 'pry'
 
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
        }}




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
  
  
  
  # 1st test make each attribute a key/hash and key and array of bird name 
#def first_try(data)  
 # data[:color].each do |color_name, array|
  #  i = 0 
   # while i < array.length do
    #binding.pry
    
    #pigeon_name = array[i]
    
   #if hash_by_color.has_key?(array[i])
   #   hash_by_color[array[i]][:color] << "#{color_name}"
      # binding.pry
  #else
   #  hash_by_color[array[i]] = {
    #   :color => ["#{color_name}"]
    # }
  #end  
    
    #binding.pry 
    
   # i += 1 
    #end
    
  #end
#end  
  
  

p nyc_pigeon_organizer(pigeon_data)
