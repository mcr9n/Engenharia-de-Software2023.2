def is_anagram?(word1, word2)
  return word1.downcase.chars.sort == word2.downcase.chars.sort
end

def lists_of_anagrams?(list)
    list_of_lists = [] #the output list
    list.each do |word|
        anagrams_of_word = []
        list.each do |word2|
            if is_anagram?(word, word2)
                anagrams_of_word << word2
                list = list - [word2]
            end
        end
        if anagrams_of_word.length > 0
            list_of_lists << anagrams_of_word
        end
    end
    return list_of_lists
end

result = lists_of_anagrams?(["cars", "for", "potatoes", "racs", "four", "scar", "creams", "scream"])
result.each do |list|
    puts list
    puts "----------"
end