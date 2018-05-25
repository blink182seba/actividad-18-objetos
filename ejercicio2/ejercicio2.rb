require 'date'
class Course
  def initialize(name, *date)
    @name = name
    @date = date.map { |date| Date.parse(date) }
  end
  def date_before(f)
    if f == Date.parse('2018-01-01')
      puts 'Execepcion'
    elsif @date[0] >= f
      puts @name
    end
  end
  def date_after(after)
    if after == Date.parse('2018-01-01')
      puts 'Execepcion'
    elsif @date[0] <= after
      puts @name
    end
  end
end
file = File.open('cursos.txt', 'r')
data = file.readlines
file.close

cursos = []
data.each do |line|
  ls = line.split(', ')
  cursos << Course.new(*ls)

end
cursos[1].date_before(Date.today)
cursos[2].date_after(Date.today)
