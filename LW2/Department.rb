class Department
    attr_accessor :name, :phone_number, :duties, :selected_duty
    
    def initialize(name, phone_number, duties=Hash.new, selected_duty=nil)
        self.name= name
        self.phone_number= phone_number
        self.duties= duties
        self.selected_duty = selected_duty
    end

    def to_s
        "#{self.name}\t#{self.phone_number}"
    end

    def add_duty(duty, description)
        self.duties[duty] = description
    end

    def select_duty(duty)
        self.selected_duty = duty
    end

    def get_description()
        duties[self.selected_duty]
    end

    def change_description(description)
        duties[self.selected_duty] = description
    end
end

murderers = Department.new("Murderers", "+123-45-67-890")
valve.add_duty("Убить влада новикова", "Быстро и незаметно")
valve.add_duty("Убить влада ручкина", "Как можно мучительнее")
valve.select_duty("Убить влада новикова")
print valve.get_description
puts
valve.change_description("Отмена - oн исправился")
print valve.get_description