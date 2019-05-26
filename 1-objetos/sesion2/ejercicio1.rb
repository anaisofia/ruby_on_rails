class Table
  attr_accessor :table, :amount
  def initialize(table, *amount)
    @table = table
    @amount = amount.map(&:to_i)
  end

  def average
    @amount.inject(&:+)/@amount.size
  end

  def table_name
    "La #{@table} recolectó #{average}"
  end

  def highest
    print "El valor más alto en la semana para la #{@table} es "
    @amount = amount.map(&:to_i).max
  end

end

collected = []
data = []
File.open('casino.txt', 'r') { |file| data = file.readlines}

data.each do |tab|
  ls = tab.split(', ')
  collected << Table.new(*ls)
end

collected.each do |mesa|
  puts mesa.table
  puts mesa.amount
  puts '---------------'
end

n = collected.count
n.times do |i|
puts collected[i].table_name
end

n = collected.count
n.times do |i|
puts collected[i].highest
end
