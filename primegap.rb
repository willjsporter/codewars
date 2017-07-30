require 'prime'
=begin
def gap(g, m, n)
  asdf=[]
    m.upto(n) do
      |p| asdf<<p.to_i if Prime.prime?(p)
    end

    i=1
  while i<asdf.length do
    break if asdf[i]-asdf[i-1]==g
    i+=1
  end
  return i==asdf.length ? nil : [asdf[i-1],asdf[i]]
end

p gap(2,100,110).class
p gap(4,100,110)
p gap(6,100,110).class
p gap(8,300,400)
p gap(10,300,400)
=end

# could do take first larger prime (p), break out, check if p+g is prime,
# need to check if first prime
# if true, flick switch and break and return [p,p+g]
#if false, looop again

def gap(g,m,n)
  switch=false
while switch==false&&m<n
  while !Prime.prime?(m) do
    m+=1
  end
  !(m+1...m+g).to_a.map { |e| Prime.prime?(e)}.any? && Prime.prime?(m+g) ? switch=true : m+=1
end
return switch==true ? [m,m+g] : nil
end

p gap(2,100,110)
p gap(4,100,110)
p gap(6,100,110) #LOOKS LIKE THIS FAILS - DOESN'T RETURN NIL
p gap(8,300,400)
p gap(10,300,400)
