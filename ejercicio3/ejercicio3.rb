
class Roulette
  attr_accessor :ruleta
  def initialize(apuesta)
    @apuesta = apuesta
  end
  def generate_array(apuesta)
    r = (1..10).to_a
    h = rand(11-1)
    roulette_history(h+1)
    if r[h] == apuesta
      print 'winner'
      winners(apuesta)
    end
    print 'loser' if r[h] != apuesta
  end
  def winners(p)
    file = File.open('winners.txt', 'a') { |f|
    f.puts p
    }
  end
  def roulette_history(q)
    file = File.open('roulette_history.txt', 'a') { |f|
    f.puts q
    }
  end

  def rouletter_history

  end
  def ruleta
    self.generate_array(@apuesta)
  end
end
m = Roulette.new(3)
m.ruleta
file = File.open('roulette_history.txt', 'r')
data = file.readlines
file.close
q = data.map(&:to_i)
print q.length
