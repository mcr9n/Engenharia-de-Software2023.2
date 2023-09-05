#I want to count the words in a string. How do I do that?
def count_words?(str)
    #downcase the string
    str = str.downcase
    #gsub with the word boundary \b to remove non-alphanumeric characters
    str = str.gsub(/\b/, '')
    str = str.gsub(/ \W/,'')   
    #split the string into an array of words
    lista_de_palavras = str.split(" ")
    #create a new hash to store the words and their counts
    word_count = Hash.new(0)
    #iterate through the array of words and add them to the hash
    lista_de_palavras.each do |word|
        word_count[word] += 1
    end
    #return the hash
    return word_count

end

puts count_words?("A man, a plan, a canal -- Panama")
puts count_words?("Doo bee doo bee doo")

  
  