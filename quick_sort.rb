class Array
  def quick_sort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    return *left.quick_sort, pivot, *right.quick_sort
  end
end

n = [12, 33, 1, 0, 8, 10]

p n.quick_sort