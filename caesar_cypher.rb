def caesar_cypher(word, right_skip = 0)
  word_split = word.split("")
  char_range = ("A".."Z").to_a + ("a".."z").to_a
  caesar_cypher_split = []
  word_split.each do |char|
    if char_range.include? char
      shift_index = char_range.index(char) + right_skip
      if shift_index > char_range.length
        shift_index -= char_range.length
      end
      caesar_cypher_split.push(char_range[shift_index])
    else
      caesar_cypher_split.push(char)
    end
  end
  puts caesar_cypher_split.join ""
end

caesar_cypher("What a string!", 5)
