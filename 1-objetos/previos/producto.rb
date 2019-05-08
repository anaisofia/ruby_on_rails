class Product
  attr_reader :red
  def initialize(name, blue, red, green)
    @name = name
    @blue = blue.to_i
    @red = red.to_i
    @green = green.to_i
  end
  #Acá muestro el total de todos los prodcutos
  def stock_total
      @blue + @red + @green
  end
end

products = [] #Crear un arreglo de productos con la información
file = File.open('products.txt', 'r')
data = file.readlines
file.close

data.each do |line| #Leer el archivo externo y agregar al arreglo los productos
  name, blue, red, green = line.split(',')
  products << Product.new(name, blue, red, green)
end

# muestra el stock de cada producto en ROJO unicamente
# products.each do |product|
#   puts product.red
# end

#muestra el total del stock ROJO
puts products.inject(0) {|sum, product| sum + product.red}

#muestra el total del stock total
puts products.inject(0) {|sum, product| sum + product.stock_total}

#si quiero mostrar el stock total de un producto
