# Write your code here.
require 'pry'

def dictionary
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  string.split.map do |element|
    if dictionary.keys.include?(element.downcase)
      element = dictionary[element.downcase]
    else
      element
    end
   end.join(" ")
   
# binding.pry  
end
  
def bulk_tweet_shortener(tweet)
  tweet.each do |element|
    new_array = word_substituter(element)
    puts new_array
  # binding.pry
  end
end

