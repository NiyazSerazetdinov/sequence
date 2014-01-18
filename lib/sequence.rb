class Sequence

  def initialize(param)
    @sequence = param
  end

  def to_s
    @sequence
  end

  def next
    @sequence = generate(@sequence)
    self
  end

  private

  def generate(param)
    param.scan(/1+|2+|3+|4+|5+|6+|7+|8+|9+/).map { |e| e.length.to_s + e[0] }.join
  end
end
