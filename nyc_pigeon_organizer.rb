require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |pigeon_cat,pigeon_sub_cat|
    pigeon_sub_cat.each do |prop, names|
      names.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}

        end
        if !pigeon_list[name][pigeon_cat]
          pigeon_list[name][pigeon_cat] = []
        end
        pigeon_list[name][pigeon_cat] << prop
      end

    end
  end
  pigeon_list
end
