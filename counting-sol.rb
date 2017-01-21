path_here = File.dirname(__FILE__)
script_path = File.join(File.dirname(__FILE__), "obama-last-speech.txt")
text = File.readlines(script_path)

words = Array.new
count = Hash.new(0)

text.each do |p|
  p.downcase!
  if p.include? "-"
    p.delete! "-"
  end
  words.push(p.split(/\W/))
end

words = words.flatten(1)
words.delete("")
if words.include? "s"
  words.delete("s")
end

words.each do |word|
  count[word] += 1
end

count = count.sort_by{|word, count| count}.reverse

count.each do |key, count|
  puts key + ': ' + count.to_s
end
