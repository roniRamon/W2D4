require 'byebug'
def my_min_1(arr)
  min = arr[0]

  arr.each_index do |idx1|
    arr.each_index do |idx2|
      next if idx1 == idx2
      if arr[idx1] > arr[idx2]
        min = arr[idx2] < min ? arr[idx2] : min
      else
        min = arr[idx1] < min ? arr[idx1] : min
      end
    end
  end
  min

end

# O(n^2) would be the time complexity for this function because worst case scenario it takes 2 times the # of input to solve the problem.

def my_min_2(arr)
  min = arr[0]
  arr.each do |el|
      min = el  if el < min
  end
  min
end

# O(n) # worst case scenario we are goign through the total size of the array.


def largest_contiguous_sum(arr)
  largest = arr.first

  i = 0
  while i < arr.length
    j = i + 1
    while j < arr.length + 1

      res = arr[i...j].inject(:+)
      largest = res if res > largest
      j += 1
    end
    i += 1
  end
  largest
end

def lcs2(arr, start_pos, end_pos)
return arr[start_pos] if start_pos == ( arr.length - 1 )
return arr[end_pos] if end_pos == 0
p "startpos: #{start_pos} end pos #{end_pos}"
max =  arr[start_pos..end_pos].inject(:+)
# p "this is max: #{max}"
# debugger
leftway = lcs2(arr, start_pos + 1, end_pos)

rightway = lcs2(arr, start_pos, end_pos - 1)

p "This is max: #{max} - this is left: #{leftway} right #{rightway}"
# p leftway
# p rightway
# new_add =
winner = leftway < rightway ? rightway : leftway

thewinner = max < winner ? winner : max
p thewinner

# p max > new_add ? max : new_add


end





list = [2, 3, -6, 7, -6, 7]
p lcs2(list, 0, (list.length - 1))
