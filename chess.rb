def game(n)
    # For all numerators, numerator is 1,...,n
    # All demonminators have value 1+r,...,n+r for r=1,...,n
    # To put all fractions in the same format, find lcm of all denominators = lcm

   lll=(1..2*n).to_a.reduce(1,:lcm)
   i = 1
   j = 1
   numsum=0

   while i <= n
    while j <= n
     numsum+= j*lll/(j+i)
     j+=1
    end
    j=1; i+=1
   end
   ary = [Rational(numsum, lll).numerator, Rational(numsum, lll).denominator]
   if ary[1]==1
      [ary[0]]
   else
      ary
    end
end

start=Time.now
p game 1000
p Time.now-start
