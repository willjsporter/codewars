def solution(roman)
  romsum=0
  asdf=   {
    "I" =>1,
    "V" =>5,
    "X" =>10,
    "L" =>50,
    "C" =>100,
    "D" =>500,
    "M" =>1000,
      }
  roman=roman.split("")
  roman.each_with_index do |e,i|
    if (i+1...roman.length).map{|r| asdf[e] >= asdf[roman[r]]}.all?
      romsum+=asdf[e]
    else
      romsum-=asdf[e]
    end
  end
  romsum
end

p solution("MCMXC")
