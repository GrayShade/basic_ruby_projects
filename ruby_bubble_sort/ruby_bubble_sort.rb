require 'pry-byebug'
def bubble_sort(arr)
  flag = false
  while flag == false
    counter = 0
    arr[0..-2].each_with_index do |ele, idx|
      next if ele <= arr[idx + 1]

      # parallel assignment does not require using temp variable:
      arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
      counter = 1
    end
    flag = true if counter.zero?
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
# => [0,2,2,3,4,78]
