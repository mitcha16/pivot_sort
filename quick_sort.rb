require 'benchmark'

class Sorter
  def sort(numbers)
    if numbers.size <= 1
      return numbers
    else
      pivot = numbers.delete_at(numbers.index(numbers.sample))
      less = []
      more = []
      numbers.each do |number|
        if number < pivot
          less << number
        else
          more << number
        end
      end
      sorted = []
      sorted << sort(less)
      sorted << pivot
      sorted << sort(more)
    end
    return sorted.flatten!
  end
end
