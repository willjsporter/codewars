=begin
def whoIsNext(names, r)
  (r-1).times do
    names.push(names[0],names[0])
    names.delete_at(0)
  end
  names[0]
end
=end

def whoIsNext(names, r)
i=0;
while r+5>names.length*2**i
  i+=1
end
return  names[(r-5*(2**(i-1)-1)-1)/2**(i-1)]
end

for i in 1..46 do
whoIsNext([1,2,3,4,5],i)
end
