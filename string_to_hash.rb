def str_to_hash(str)
    str = str.split(",")
    hash = {}
    str.each do |s|
      value=s.to_s.strip
      # puts value.to_h
      value = value.split("=")
      hash[value[0]] = value[1].to_i
    end
    hash
  end
  
  puts str_to_hash("a=1, b=2, c=3, d=4");