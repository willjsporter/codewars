=begin
def comp(array1, array2)
  return false if array1.length!=array2.length
  array1.sort!; array2.sort!
  array1.each_with_index{|e,i| e**2==array2[i] ? true : false}.all?
end
=end

def comp(array1, array2)
  return false if array1.empty? || array2.empty?
  return false if array1.length!=array2.length
  #after this your stuff is better!
  array1.sort!; array2.sort!;i=0
  while i<array1.length
    return false if array1[i]**2 != array2[i]
    i+=1
  end
  true
end


print comp([],[])
