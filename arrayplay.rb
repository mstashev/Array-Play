#Explorer
# Part 1
our_class = ["Michael","Miguel","Demetra","Phil","Dave","David","Laura","Rob","Nancy","Kendrick","Ben","Kalea"]
students = []
our_class.each do |student|
  if student.length == 5
    #puts student.inspect
    students << student
  end
end
puts "The names of students whose names contain 5 letters are #{students.join(", ")}"

# Part 2
sentence = "Ruby is actually kind of fun once you get used to it."
sentence_array = sentence.split(" ")
four_letter_words = []

sentence_array.each do |word|
  if word.length == 4
    four_letter_words << word
  end
end
puts "The words that contain four letters are: #{four_letter_words.join(", ")}"

# Part 3
movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}
budget_less_than_100 = []

movies.each do |movie|
  if movie[:budget] < 100
    budget_less_than_100 << movie
  end
end

puts budget_less_than_100.inspect

leonardo_dicaprio_movies = []

movies.each do |movie|
  if movie[:stars].include? "Leonardo DiCaprio"
    leonardo_dicaprio_movies << movie
  end
end


puts leonardo_dicaprio_movies.inspect

#Adventurer
string_to_split = ARGV[0]
num_chars = ARGV[1]
def four_words(text)
  split_text = text.split(" ")
  four_character_words = []
  split_text.each do |word|
    if word.length == 4
      four_character_words << word
    end
  end
  puts "The number of words with 4 characters is #{four_character_words.count}"
  puts "Those words are: #{four_character_words.join(", ")}"
end
four_words(string_to_split)

def how_many_words(text, num)
  split_text = text.split(" ")
  x_character_words = []
  split_text.each do |word|
    if word.length == num.to_i
      x_character_words << word
    end
  end
  puts "The number of words with #{num} characters is #{x_character_words.count}"
  puts "Those words are: #{x_character_words.join(", ")}"
end
how_many_words(string_to_split, num_chars)

budget_total = []
movies.each do |movie|
    budget_total << movie[:budget]
end
puts "The budgets are: #{budget_total.join(", ")}"
puts "The grand total is: #{budget_total.inject(0){|sum,item| sum + item}}"
