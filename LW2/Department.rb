class Department
    attr_accessor :name, :phone_number
    
    def initialize(name, phone_number, duties=Hash.new, selected_duty=nil)
        self.name= name
        self.phone_number= Department.correct_phone_number(phone_number)
        @duties = duties
        @selected_duty = selected_duty
    end

    def to_s
        "#{self.name}\t#{self.phone_number}"
    end

    def add_duty(duty, description)
        @duties[duty] = description
    end

    def select_duty(duty)
        @selected_duty = duty
    end

    def get_description()
        @duties[@selected_duty]
    end

    def change_description(description)
        @duties[@selected_duty] = description
    end

    def delete_duty()
        @duties.delete(@selected_duty)
    end

    def self.is_ru_phone_number?(phone)
        if (/^((\+7|7|8)+([0-9]){10})$/).match(phone) == nil
            return false
        end
        true
    end

    def self.correct_phone_number(phone)
        if self.is_ru_phone_number?(phone)
            nums = phone.chars.map{|symb| symb if symb =~ /[0-9]/}.join
            return "7-" + nums[1..3] + "-" + nums[4..]
        else
            raise ArgumentError ,"Invalid phone number."
        end
    end
end

# murderers = Department.new("Murderers", "89186824834")
# p murderers.phone_number
# murderers.add_duty("Убить влада новикова", "Быстро и незаметно")
# murderers.add_duty("Убить влада ручкина", "Как можно мучительнее")
# murderers.select_duty("Убить влада новикова")
# p murderers.get_description
# puts
# murderers.delete_duty
# p murderers.get_description