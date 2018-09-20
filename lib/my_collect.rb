def my_collect(array)
  if !array.empty?
    newArray = []
    i = 0 
    while i < array.length 
    yield(array[i])
    newArray << array[i]
    end
  else 
    #empty array
  end
  return newArray
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end
