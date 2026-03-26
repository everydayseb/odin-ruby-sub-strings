def substrings(string, dictionary)
  string = string.downcase
  dictionary.reduce(Hash.new(0)) do |list, word|
    list[word] = string.scan(word).length if string.include? word.downcase
    list
  end
end

dictionary = [
  "below","down","go","going","horn","how","howdy",
  "it","i","low","own","part","partner","sit"
]

p substrings("below", dictionary)

p substrings("Howdy partner, sit down! How's it going?", dictionary)