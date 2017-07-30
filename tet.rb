def whoIsNext(names, r)
  (r-1).times do
    names.push(names[0],names[0])
    names.delete_at(0)
  end
  names[0]
end
