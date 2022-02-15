require_relative './Department'

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
