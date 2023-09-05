class Dessert
    attr_accessor :name
    attr_accessor :calories
    def initialize(name, calories)
        @name = name
        @calories = calories
    end
    def get_name
        return self.name
    end
    def set_name(new_name)
        self.name = new_name
    end
    def get_calories
        return self.calories
    end
    def set_calories(new_calories)
        self.calories = new_calories
    end
    def healthy?
        if self.calories < 200
            return true
        else
            return false
        end
    end
    def delicious?
        return true
    end
    
end

dessert1 = Dessert.new("cake", 100)
dessert2 = Dessert.new("cake", 300)
puts dessert1.healthy?
puts dessert2.healthy?
puts dessert1.delicious?
puts dessert2.delicious?

class JellyBean < Dessert
    attr_accessor :flavor 
    def initialize(name, calories, flavor)
        super(name, calories)
        @flavor = flavor
    end
    def get_flavor 
        return self.flavor
    end
    def set_flavor(new_flavor)
        self.flavor = new_flavor
    end
    def delicious?
        if self.flavor == "black licorice"
            return false
        else
            return true
        end
    end
end

jellybean1 = JellyBean.new("jellybean", 100, "black licorice")
jellybean2 = JellyBean.new("jellybean", 100, "strawberry")
puts jellybean1.delicious?
puts jellybean2.delicious?