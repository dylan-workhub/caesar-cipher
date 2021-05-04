require 'pry'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def sub_strings(string, dictionary)
  string = string.downcase
  dictionary_hash = dictionary.reduce(Hash.new(0)) do |result, word|
    if string.include?(word)
      string_total = string.scan(word)
      result[word] += string_total.length
      result
    else
      result
    end
  end
  return dictionary_hash
end

p sub_strings("siterator belowit lowhornlow PART", dictionary)