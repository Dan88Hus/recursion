
def fibs(n)
  arr = [0, 1]
  if n < 2 
    arr
  else
    arr if (2..n).each { |num| arr<<arr[num-1]+arr[num-2]}
  end
end
p fibs(8)


#==========================

def fibs_rec (num,seq=[0,1])
  if num <2
    seq
  else
    x = seq[-2]+seq[-1]
    seq<<x
    fibs_rec(num-2,seq)
  end
end
#=========================
def merge_sort(array)
  sorted=[]
  return array if array.length <= 1
  half_array = array.length/2
  left = merge_sort(array[0..half_array-1])
  right = merge_sort(array[half_array..-1])
  until left.empty? || right.empty?
    left[0] <= right [0] ? sorted << left.shift : sorted<< right.shift
  end
  return sorted + left + right 
  # puts left
  # puts right
end
p merge_sort([55, -20, 10, 80, 100, 1, 33, 32, -8])
