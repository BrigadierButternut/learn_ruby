class Book
# write your code here
attr_reader :title

#must define the method "title" for use with this class
def title=(book_title)
  #splitting the title into seperate words to be dealt with individually
  title_words = book_title.split(" ")
  #Always capitalize the first word
  title_words[0] = title_words[0].capitalize
  word_number = 1
  while word_number < title_words.length
    little_words = ["a" "an" "and" "the" "in" "of"]
    if little_words.include? title_words[word_number] == false
      title_words[word_number].capitalize
    end
    word_number += 1
  end
  title_words.join ' '
end

end
