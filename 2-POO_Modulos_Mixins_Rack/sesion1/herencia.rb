class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end
  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@count = 0
  def initialize(model, year)
    super(model, year)
    @@count += 1
  end

  def self.total_pieces()
    @@count
  end

  def engine_start
    super
      puts 'El motor se ha encendido!'
  end
end

10.times do
  Car.new('Fox', '2008')
  puts 'Carrito'
end

puts "Se han creado #{Car.total_pieces} autos"

puts Car.new('Fox', '2008').engine_start
