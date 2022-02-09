class Department
    attr_accessor :name, :phone_number
    
    def initialize(name, phone_number)
        self.name= name
        self.phone_number= phone_number
    end

    def to_s
        s = ""
        self.instance_variables.each do |var|
            if self.instance_variable_get(var) != nil
                s +=  "#{var.to_s.delete("@").capitalize}: #{self.instance_variable_get(var).inspect}\n"
            else
                next
            end
        end
        s
    end
end
