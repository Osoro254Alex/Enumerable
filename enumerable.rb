module MyEnumerable
  def all?(&block)
    each do |element|
      return false if block.call(element) == false
    end
    true
  end

  def any?(&block)
    each do |element|
      return true if block.call(element) == true
    end
    false
  end

  def filter?(&block)
    output_arr = []
    each do |element|
      output_arr << element if block.call(element) == true
    end
    output_arr
  end
end
