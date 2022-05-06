class Anagram

  attr_accessor(:input1, :input2)
  
  def initialize(input1, input2)
    @input1 = input1
    @input2 = input2

  end

  def anagram_checker

    input1_lower = @input1.downcase.gsub(/[^a-z ]/, '')
    input2_lower = @input2.downcase.gsub(/[^a-z ]/, '')

    input1_chars = input1_lower.chars
    input2_chars = input2_lower.chars

    input1_sorter = input1_chars.sort
    input2_sorter = input2_chars.sort

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

    if input1_vowel_count === 0 || input2_vowel_count === 0
      "Please input a real word"
    elsif (input1_sorter - input2_sorter) === input1_sorter
      "This is an antigram"
    elsif input1_sorter === input2_sorter
      true
    else
    "These two words are neither anagrams nor antigrams"
    end
  end
end