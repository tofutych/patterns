require_relative './Department'
require 'psych'

def read_from_txt(path)
    arr = Array.new
    File.open("#{path}").each do |dep| 
        name, phone_number = dep.chomp.split("|")
        arr.append(Department.new(name, phone_number))
    end
    arr
end

def write_to_txt(path, arr)
    File.open("#{path}", "w") do |file|
        arr.each do |e|
            file.puts e
        end
    end
end

def print_objects(arr)
    arr.each do |e|
        puts e
    end
end

def write_to_yaml(arr)
    File.open("data.yaml", "w") do |file|
        file.write(Psych.dump(arr))
    end
end


arr = read_from_txt("/home/tofut/Desktop/University/Ruby/LW2/dep_objects.txt")
arr.append(Department.new("Robbers", "89181234567"))
write_to_txt("/home/tofut/Desktop/University/Ruby/LW2/dep_objects copy.txt", arr)
write_to_yaml(arr)