class Human
    def initialize(name, height, weight)
        @name = name
        @height = height
        @weight = weight
    end

    def run
        @weight -= 1
    end
    def eat 
        @weight += 1
    end
    def show
        puts "#{@name}さんの身長は#{@height}cm、体重は#{@weight}kgです。" 
        bmi = @weight.to_f / ((@height.to_f / 100) ** 2)
        puts "BMIは#{bmi.round(2)}です。"
    end
end

kuzuba = Human.new("葛葉", 172, 64)
kuzuba.show

20.times do
    kuzuba.run
end

kuzuba.show
