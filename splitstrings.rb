def solution(str)
  ary=[]
  str.split("").each_slice(2){|a,b| ary<< [a,b].join}
  ary.last<< "_" if !ary.last.length.even?
ary
end

print solution("WillFreddie")


ary.each{|a| a= "-#{a.downcase}" if a.upcase?}

if upcase
  -a
else
