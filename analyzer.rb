# read the contents of a text file into an array
lines = File.readlines("text.txt")

# count the number of lines
line_count = lines.size

# join all the lines into one big string
text = lines.join

# determine the number of characters in the text
total_characters = text.length

# determine total number of characters without spaces
total_characters_nospaces = text.gsub(/\s+/, '').length

# determine word count
word_count = text.split.length

# determine number of sentences
sentence_count = text.split(/\.|\?|\!/).length

# determine number of paragraphs
paragraph_count = text.split(/\n\n/).length

puts "#{line_count} lines"
puts "#{total_characters} characters"
puts "#{total_characters_nospaces} characters excluding spaces"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"

puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"

# build array of stop words
stopwords = %w{the a by on for of are with just but and to the my I has some in}

words = text.scan(/\w+/)
keywords = words.select { |word| !stopwords.include?(word) }
keywords2 = keywords.join(' ')
word_count_nostopwords = keywords2.split.length

puts "#{word_count_nostopwords} words (no stop words)"
puts "#{((keywords.length.to_f / words.length.to_f) * 100).to_i} percent of non-stop words to all words"
