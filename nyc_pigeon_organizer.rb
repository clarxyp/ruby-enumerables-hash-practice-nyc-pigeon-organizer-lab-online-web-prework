def nyc_pigeon_organizer(data)
  organized_pigeons = {}

  data.each do |traits, traits_hash|
    # search traits_hash for details
    traits_hash.each do |details, details_array|
      # search details_array for names
      details_array.each do |name|

         # if organized_pigeons[name] doesn't exist, create empty hash
        if organized_pigeons[name] == nil
          organized_pigeons[name] = {}
        end

         # if organized_pigeons[name][traits] doesn't exist, create empty array
        if organized_pigeons[name][traits] == nil
          organized_pigeons[name][traits] = []
        end

         # shovel details as strings into traits array
        organized_pigeons[name][traits] << details.to_s

       end
    end
  end

   organized_pigeons
end	end