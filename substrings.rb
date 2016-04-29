# Find substrings in a larger string
def substrings(string, dictionary)
  result = Hash.new(0)
  string.split.each do |word|
    match(word, dictionary).each_pair do |w, occurence|
      result[w] += occurence
    end
  end

  return result
end

# Find substrings in single word
def match(word, dictionary)
  result = Hash.new(0)
  down_word = word.downcase

  dictionary.each do |w|
    if down_word.include?(w)
      result[w] += 1
    end
  end

  return result
end
    
