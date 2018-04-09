require 'pry'

def nyc_pigeon_organizer(data)
  new_hash={}
  data.each do |key, value|
    value.each do |key_2, name_array|
      name_array.each do |name|
        new_hash[name] ||= {}
        new_hash[name][key] ||= []
        new_hash[name][key] << key_2.to_s
      end
    end
  end
  new_hash
end
