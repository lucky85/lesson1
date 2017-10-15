class MyArray
  attr_accessor :array

  def initialize(arr = [])
    @array = arr
  end

  def size
    @array.size
  end

  def reverse
    @array.reverse
  end

  def max
    @array.max
  end

  def min
    @array.min
  end

  def desc
    @array.sort.reverse
  end

  def asc
    @array.sort
  end

  def odd
    @array.select(&:odd?)
  end

  def multiple_to_three
    arr = []
    i = 0
    @array.each do |a|
      if (a % 3).zero?
        arr[i] = a
        i += 1
      end
    end
    arr
  end

  def uniq
    @array.uniq
  end

  def devide_on_ten
    @array.collect { |x| x.to_f / 10 }
  end

  def chars
    @array.select { |y| y.between?(1, 26) }.map do |x|
      ('a'..'z').to_a[x - 1].to_sym
    end
  end

  def switch
    min = @array.min
    max = @array.max
    min_i = @array.index(min)
    max_i = @array.index(max)
    @array[min_i] = max
    @array[max_i] = min
    @array
  end

  def before_min
    min = @array.index(@array.min)
    @array.slice(0, min)
  end

  def three_smallest
    @array.min(3)
  end
end
