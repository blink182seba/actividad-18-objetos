class Table
  attr_reader :table, :collections
  def initialize(table, *collections)
    @table = table
    @collections = collections.map(&:to_i)
  end

  def average
    @collections.inject(&:+) / @collections.size
  end

  def maximo
    max = 0
    l = 1
    w = nil
    @collections.each do |i|
      if i > max
        max = i
        w = l
      end
      l += 1
    end
    print "el numero maximo de la #{@table}: #{max} en el dia #{w}"
  end
end

 file = File.open('/Users/rstuardo/Desktop/git/actividad18/ejercicio1/casino.txt', 'r')
 data = file.readlines
 file.close

 table = []
 data.each do |line|
   ls = line.split(', ')
   table << Table.new(*ls)
 end
puts '  MAYOR VALOR RECAUDADO Y EL DIA  '
 table.each do |i|
   puts i.maximo
 end

puts '   PROMEDIO   '
table.each do |i|
  puts "#{i.table}: #{i.average}"
end
# table.each do |key|
#   puts key.collections.max
# end
