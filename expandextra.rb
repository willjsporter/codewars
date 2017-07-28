def expandedForm(num)
  i=0; blurgh=""
  num_ary=num.to_s.split('')
  while num_ary[i]!='.' do
    blurgh << num_ary[i]; i+=1
  end
  i+=1;j=1
  i.upto(num_ary.length-1) do |a|
    blurgh<< " + #{num_ary[a]}/#{10**j}" if num_ary[a]!="0"; j+=1
  end
  blurgh
end

print expandedForm(11.1121304)
