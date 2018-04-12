require 'pry'

def merge array, i1, j1, i2, j2
  left_array = array[i1..j1]
  right_array = array[i2..j2]
  n1 = left_array.length
  n2 = right_array.length
  i = 0
  j = 0
  k = i1
  while (i < n1 && j < n2)
    if left_array[i] <= right_array[j]
      array[k] = left_array[i]
      i += 1
    else
      array[k] = right_array[j]
      j += 1
    end
    k += 1
  end
  while (i < n1)
    array[k] = left_array[i]
    i += 1
    k += 1
  end
  while (j < n2)
    array[k] = right_array[j]
    j += 1
    k += 1
  end
end

def mergeSort array, low, high
  if low < high
    mid = (low + high) / 2
    mergeSort array, low, mid
    mergeSort array, (mid + 1), high
    merge array, low, mid, mid + 1, high
  end
end

array = [5, 1, 2, 6, 3, 0]
mergeSort array, 0, (array.length - 1)
