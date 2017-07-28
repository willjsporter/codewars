class String
  def camelcase
    split(" ").map(&:capitalize).join
  end
end

puts "testing this first case".camelcase
