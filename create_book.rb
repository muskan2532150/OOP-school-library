def inputs(show)
  outputs = []
  show.each do |s|
    print s
    outputs.push(gets.chomp)
  end
  outputs
end
