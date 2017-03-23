class Book
# write your code here

#the attribute accessor creates an instance variable @title
#an instance variable is accessible to all methods within a class
#attribute accessors also create a method called "name=" to set the attribute
attr_accessor :title


#must define the method "title" for use with this class
def title
  little_words = ["in", "the", "or", "of", "and","a","an", "but","for","on","at","from","by"]
  book_title = @title
  #split into seperate words
  title_words = book_title.split
  #capitalize the first word
  title_words[0].capitalize!
  #for every word in the title...
  title_words.each do |word|
    #...capitalize that word if and only if it is not a "little word"
    if !little_words.include? "#{word}"
      word.capitalize!
    end #end of if statement
  end #end of block
  title_words.join " "
end #end of title definition


end #end of class definition
