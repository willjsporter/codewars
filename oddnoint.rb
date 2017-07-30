def game(n)
  # so will have numerator on each line
n.each{|a| break a if !n.count(a).even?}


end

print game ([1,2,3,4,5,6,1,2,3,5,6])
