require 'pry'

def my_find(collection)

  i = 0
  bool = false
  while i < collection.length && bool == false
    bool = yield(collection[i])
    i += 1
  end

  bool == true ? collection[i - 1] : nil

end
