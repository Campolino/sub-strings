class SubString
  def substring(text, dictionary)
    text.split(' ').each do |string|
      dictionary.each do |word| 
        p word.include?(string)
      end
    end
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substring = SubString.new
substring.substring("below", dictionary)