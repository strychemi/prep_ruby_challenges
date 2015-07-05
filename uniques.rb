def uniques(array_inputs)
  unique_objects = Hash.new
  unique_set = []

  array_inputs.each do |x|
    unique_objects[x] = true if !unique_objects[x]
  end
  unique_objects.each do |key, value|
    unique_set << key
  end

  return unique_set
end
