class Anagram
  
  def initialize(input1, input2)
    @input1 = input1.downcase.gsub(/[^a-z ]/, '')
    @input2 = input2.downcase.gsub(/[^a-z ]/, '')

  end

  def anagram_checker

    input1_sorter = @input1.chars.sort
    input2_sorter = @input2.chars.sort

    input1_vowel_count = 0
    input2_vowel_count = 0

input1_sorter.each do |array_element|
  if array_element === "a" || array_element === "e" || array_element === "i" || array_element === "o" || array_element === "u" || array_element === "y"
    input1_vowel_count += 1
  end
end

input2_sorter.each do |array_element|
  if array_element === "a" || array_element === "e" || array_element === "i" || array_element === "o" || array_element === "u" || array_element === "y"
    input2_vowel_count += 1
  end
end

    if input1_vowel_count <= 0 || input2_vowel_count <= 0
      "Please input a real word"
    elsif (input1_sorter - input2_sorter) === input1_sorter
      "This is an antigram"
    elsif input1_sorter === input2_sorter
      "This is an anagram"
    else
    "These words are neither anagrams nor antigrams"
    end
  end
end