class Fibonacci
  def initialize(n, algorithm = :exponential)
    @n = n
    @algorithm = algorithm
  end

  def exponential(pos)
    return 0 if pos == 0
    return 1 if pos == 1
    exponential(pos - 2) + exponential(pos - 1)
  end

  def polynomial(pos)
    return 0 if pos == 0
    f = [0, 1]
    2.upto(pos) do |i|
      f[i] = f[i - 1] + f[i - 2]
    end
    return f[pos]
  end

  def generate
    resulting_ary = (@n == 0) ? [0] : []
    case @algorithm
    when :exponential
      @n.times { |i| resulting_ary << exponential(i) }
    when :polynomial
      @n.times { |i| resulting_ary << polynomial(i) }
    end
    (resulting_ary.size == 1) ? resulting_ary.first : resulting_ary
  end
end
