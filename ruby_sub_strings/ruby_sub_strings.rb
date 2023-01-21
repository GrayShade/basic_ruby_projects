def substrings(sentence, dictionary)
  hash = Hash.new(0)
  sentence = sentence.split(' ')
  dictionary.each do |dict_word|
    sentence.each do |word|
      hash[dict_word] += 1 if word.downcase.include?(dict_word)
    end
  end
  hash
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2,
# "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
