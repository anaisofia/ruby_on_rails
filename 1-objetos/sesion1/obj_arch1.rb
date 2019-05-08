class Product
  attr_accessor :name, :price
  def initialize(name, *price)
    @name = name
    @price = price.map(&:to_i)
  end

#(&:) me sirve para indicar que realice la acción sobre todos los elementos de ese arreglo, o elemento.

  def average
    @price.inject(&:+)/@price.size
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}

data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each do |product|
 puts product.name
 puts product.average
end
