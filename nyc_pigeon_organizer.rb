def nyc_pigeon_organizer(data)

organized_pigeons = {}

data.each do |traits, traits_hash|
  traits_hash.each do |details, details_array|
    details_array.each do |name|
      
      if organized_pigeons[name] == nil 
        organized_pigeons = {}
      end
      
      if organized_pigeons[name][traits] == nil
        organized_pigeons[name][traits] = []
      end
      
      organized_pigeons[name][traits] << details.to_s 
      
      end 
    end
  end 

  organized_pigeons
end
