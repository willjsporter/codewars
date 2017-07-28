def kebabize(str)
puts str
str.gsub(/([0-9])/, '').split(/(?=[A-Z])/).join('-').downcase
end

kebabize(dasflkjASDFASDF123)
