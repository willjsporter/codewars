def game(n)
    # For all numerators, numerator is 1,...,n
    # All demonminators have value 1+r,...,n+r for r=1,...,n
    # To put all fractions in the same format, find lcm of all denominators = lcm

   #lll=(1..2*n).to_a.reduce(1,:lcm).to_f

   i = 1
   numsum=0; temp=0

   while i<=n
     1.upto(i) do |x|
       temp+=x.to_f
     end
     numsum+=temp/(i+1); temp =0; i+=1
   end

   while i<=2*n-1
     n.downto(i-n+1) do |x|
       temp+=x.to_f
     end
     numsum+=temp/(i+1); temp =0; i+=1
   end

   if numsum%1==0
      [numsum.to_i]
   else
      [(2*numsum).to_i,2]
    end
   end


start=Time.now
p game 1
p Time.now-start
