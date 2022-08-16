class SubString
  def substring(text, dictionary)
    text.split(' ').reduce(Hash.new(0)) do |result, string|
      dictionary.each do |word| 
        result[word] += 1 if string.match?(word)
      end
      result
    end
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

text = "Howdy partner, sit down! How's it going?"

substring = SubString.new
p substring.substring(text, dictionary)