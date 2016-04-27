# Find substrings in a larger string
def substrings(string, dictionary)
  result = {}
  string.split.each do |word|
    match(word, dictionary).each_pair do |w, occurence|
      if !result.has_key?(w)
        result[w] = occurence
      else
        result[w] += occurence
      end
    end
  end

  return result
end

# Find substrings in single word
def match(word, dictionary)
  result = {}
  down_word = word.downcase

  dictionary.each do |w|
    if down_word.include?(w)
      if !result.has_key?(w)
        result[w] = 1
      else
        result[w] += 1
      end
    end
  end

  return result
end
    
