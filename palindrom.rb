# class String
#   def palindrome?
#     # Remove non-alphanumeric characters and downcase the string.
#     cleaned_str = self.gsub(/[^a-zA-Z0-9]/, '').downcase
#     # Base case: An empty string or a string with only one character is a palindrome.
#     return true if cleaned_str.length <= 1

#     # Recursive case: Check if the first and last characters are the same.
#     if cleaned_str[0] == cleaned_str[-1]
#       # If they are the same, check the substring without these characters.
#       self = cleaned_str[1..-2]
#       return palindrome?
#        #nao sei como fazer isso se não for iterativamente ou recursivamente
#     else
#       # If they are not the same, it's not a palindrome.
#       return false
#     end
#   end

# end

def palindrome?(str)
    # Remove non-alphanumeric characters and downcase the string.
    cleaned_str = str.gsub(/[^a-zA-Z0-9]/, '').downcase
    # Base case: An empty string or a string with only one character is a palindrome.
    return true if cleaned_str.length <= 1

    # Recursive case: Check if the first and last characters are the same.
    if cleaned_str[0] == cleaned_str[-1]
      # If they are the same, check the substring without these characters.
      return palindrome?(cleaned_str[1..-2])
    else
      # If they are not the same, it's not a palindrome.
      return false
    end
  end

  # Example usage:

puts palindrome?("A man, a plan, a canal -- Panama") #=> true
puts palindrome?("Madam, I'm Adam!") # => true
puts palindrome?("Abracadabra") # => false (nil is also ok)
# puts "anana".palindrome?
