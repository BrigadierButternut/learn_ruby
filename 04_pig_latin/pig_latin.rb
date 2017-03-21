#write your code here


def translate(phrase)
  #split sentance into seperate words
  words_in_sentance=phrase.split
  #For each word in the sentance, translate to pig latin according to the following steps
  words_in_sentance.each do |word|
    vowels =["a","e","i","o","u"]
    if vowels.include? "#{word[0]}"
      word.concat("ay")
    else
      while !vowels.include? "#{word[0]}"
        if word[0..1] == "qu"
          word.concat("#{word[0..1]}")
          word.slice! "qu"
        else
          word.concat("#{word[0]}")
          word.slice!(0)
        end #end of if statement
      end #end of while loop
      word.concat("ay")
    end #end of if...else statement
  end #end of block for translation
  words_in_sentance.join " "
end #end of definition
