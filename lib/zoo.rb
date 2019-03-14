class Zoo
  attr_reader :cages, :employees
  def initialize(name, opening_date, closing_date)
    @name = name
    @opening_date = opening_date
    @closing_date = closing_date
    @cages = []
    10.times do
      @cages << Cage.new
    end
    @employees = []
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    if (@opening_date <= date) && (@closing_date >= date)
      return true
    else
      return false
    end
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        return cage.animal = animal
      end
    end

    return "Your zoo is already at capacity!"
  end

  def visit
    final_greeting = ""
    @employees.each do |employee|
      final_greeting += "#{employee.greet}\n"

    end

    @cages.each do |cage|
      if !cage.empty?
        final_greeting += "#{cage.animal.speak}\n"
      end
    end

    return final_greeting
  end

end
