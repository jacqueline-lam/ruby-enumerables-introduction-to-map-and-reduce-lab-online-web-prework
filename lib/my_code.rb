def map_to_negativize(source_array)
  i = 0
  negativized_array = []
  while i < source_array.length 
    negativized_array << source_array[i] * -1
    i += 1
  end 
  return negativized_array
end

def map_to_no_change(source_array)
  return source_array
end


def map_to_double(source_array)
  doubled_array = []
  source_array.each {|element| doubled_array << element *2 }
  return doubled_array
end

def map_to_square(source_array)
  squared_array = []
  source_array.each {|element| squared_array << element **2 }
  return squared_array
end


#set default value of starting_point as 0 - as we can just take in source_array and still be able to run the method
def reduce_to_total(source_array,starting_point = 0)
  total = starting_point + source_array.sum 
  return total
end

# #method 2:
# def reduce_to_total(source_array,starting_point = 0)
#   total = starting_point 
#   counter = 0 
#   while counter < source_array.size do 
#     total += source_array[counter]
#     counter += 1
#   end
#   total
# end

def reduce_to_all_true(source_array)
  source_array.each do |item|
    return false if !(item) # if item is nil or false (blank)
  end
  return true
end


###
  describe "reduce_to_all_true returns true when all values are truthy" do
    it "reduces correctly" do
      source_array = [1, 2, true, "razmatazz"]
      expect(reduce_to_all_true(source_array)).to be_truthy
    end
  end

  describe "reduce_to_all_true returns false when any value is false" do
    it "reduces correctly" do
      source_array = [1, 2, true, "razmatazz", false]
      expect(reduce_to_all_true(source_array)).to be_falsy
    end
  end