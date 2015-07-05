def combinations(array1, array2)
  final_array = []

  array1.each do |x|
    array2.each do |y|
      final_array << x + y
    end
  end

  return final_array
end
