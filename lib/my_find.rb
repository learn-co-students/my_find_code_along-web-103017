require 'pry'

def my_find(collection)
  i =0

  return_array = []
  while i < collection.length
    if yield(collection[i])
      return collection[i]
    else
      i += 1
    end
  end
end
