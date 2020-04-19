import IO, only: [puts: 1]

square = fn x -> x * x end
puts square.(2)

add = fn x, y -> x + y end
puts add.(3, 4)
