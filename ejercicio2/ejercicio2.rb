require 'date'
class Course
  def initialize(name, *date)
    @name = name
    @date = date.map { |date| Date.parse(date) }
  end
  def date_before(f)
    @date.each do |i|
      print @name if i < f
    end
  end
end
file = File.open('/Users/rstuardo/Desktop/git/actividad18/ejercicio2/cursos.txt', 'r')
data = file.readlines
file.close

cursos = []
data.each do |line|
  ls = line.split(', ')
  cursos << Course.new(*ls)

end
cursos[0].date_before(Date.parse('2018-07-10'))
