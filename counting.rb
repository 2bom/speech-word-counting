path_here = File.dirname(__FILE__)
script_path = File.join(File.dirname(__FILE__), "obama-first-speech.txt")
# puts path_here
# puts script_path
text = File.readlines(script_path)

# print text
# puts text.class

words = Array.new
count = Hash.new(0)

text.each do |text|
  words.push(text.split(/\W/))
  # print words
end

words = words.flatten(1)
words.delete("")

words.each do |word|
  word.downcase!
  count[word] += 1
end

# count = count.sort_by{|word, count| count}.reverse
count = count.sort_by{|word, count| count}

count.each do |key, count|
  puts key + ': ' + count.to_s
end

# print words[0]
# print words[1]

# print words.index([])
# words.each do |word|
#   puts word
# end
