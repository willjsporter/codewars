
def expanded_form(num)
  blurgh=""
  num_ary=num.to_s.split('').map(&:to_i)
  num_ary.each_with_index{|e,i| blurgh<< "#{e.to_i*10**(num_ary.length-i-1)} + " if e.to_i!=0}
  blurgh.chomp(" + ")
end

puts expanded_form(7083)
