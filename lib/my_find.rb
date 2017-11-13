require 'pry'

def my_find(collection)

  i = 0
  while i < collection.length
    if yield(collection[i])
      return collection[i]
    end
    i += 1
  end

end

collection = [1,2,3,4,5]

collection.find {|i| i == 3}

# binding.pry

collection.my_find {|i| i == 3}
