def my_collect(array)
  if !array.empty?
    newArray = []
    i = 0 
    while i < array.length 
    newArray << yield(array[i])
    i += 1
    end
  else 
    #empty array
  end
  return newArray
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
newArray = my_collect(collection) do |lang|
  lang.upcase
end

puts newArray
