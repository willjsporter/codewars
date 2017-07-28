def validBraces(str)
inm=[]; counter=0 #parenth=""; curly=""; sqr=""
#parentheses +> 1, curlys +>2, squares+>3
return "Invalid input - only braces allowed" if str.gsub(/[\(\)\[\]\{\}]/, "")!=""
return false if !["[","(","{"].include?(str[0])
  str.split("").each do |i|
    case i
    when "("
      inm<<1
    when "{"
      inm<<2
    when "["
      inm<<3
    when ")"
      inm.last==1 ? inm.pop : (break false)
    when "}"
      inm.last==2 ? inm.pop : (break false)
    when "]"
      inm.last==3 ? inm.pop : (break false)
    else
      break "forbidden character"
    end
    counter+=1
  end
    counter==str.length&&inm==[] ? true : false
end

puts validBraces("asdf")
puts validBraces("[]{}()")
puts validBraces("{([][])}")
puts validBraces("{([(][)])}")
puts validBraces("{([(][)])}")
puts validBraces("()]()[")

print [].last
print [].last==3
