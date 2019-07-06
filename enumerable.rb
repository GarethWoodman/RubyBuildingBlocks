module Enumerable
  def my_each
    i = 0
    while i < self.size
      yield self[i]
      i += 1
    end
  end

  def my_each_with_index
    i = 0
    self.my_each do |n| 
      yield n,i 
      i += 1 
    end
  end

  def my_select
    selection = []
    self.my_each { |n| selection << n if yield n }
    selection
  end

  def my_all?
    self.my_select { |n| yield n }.length == self.length
  end

  def my_any?
    self.my_select { |n| yield n }.length > 0
  end

  def my_none?
    self.my_select { |n| yield n }.length == 0
  end

  def my_count
    self.my_select { |n| yield n }.length
  end

  def my_map
    new_array = []
    self.my_each { |n| new_array << (yield n) }
    new_array
  end

  def my_inject
    sum = 0
    sum = 1 if (yield sum, self[0]) == 0
    self.my_each { |n| sum = yield sum, n }
    sum
  end

  def multiply_els
    self.my_inject { |sum, n| sum * n }
  end

end

