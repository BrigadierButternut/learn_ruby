#write your code here
def echo(words)
  words
end

def shout(words)
  words.upcase
end

def repeat(word,numRepeats=2)
  ([word]*numRepeats).join ' '
end

def start_of_word(word,lastLetter)
  word[0..lastLetter-1]
end

def first_word(full_string)
  all_words = full_string.split
  all_words[0]
end

def titleize(full_string)
  #"little words" include: the, and, to, of
  #first split all words so they can be dealt with by themselves
  all_words = full_string.split
  #Always capitalize the first word
  all_words[0].capitalize
  #for the remainder of the sentance, only capitalize if not a "little word"
  count = 1
  while count < all_words.length
    if all_words[count] != "the" || "and" || "to" || "of"
      all_words.each do
        all_words[count].capitalize
      end
      count += 1
    end
    all_words.join " "
end
