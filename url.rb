def domain_name(url)
  url.gsub(/(https?\:\/\/)?www\./,"").gsub(/\.com.*/,"")
end

print domain_name("www.hotmail.com")
