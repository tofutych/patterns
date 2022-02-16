# class Person
#     def initialize(**options)  # **  eto hash
#       @name = options[:name] || [ options[:first_name] , options[:last_name] ].join(' ').strip
#     end
#   end

class Department_list
    def initialize(path)
        extension = path.split(".")[1]
        case extension
        when "txt"
            initialize_with_txt()
        when "yaml"
            initialize_with_yaml()
        else
            raise ArgumentError ,"Wrong file extension."
        end
    end

    private
    def initialize_with_txt(path)
    end

    def initialize_with_yaml(path)
    end
end

