class Anagram

  attr_accessor(:input1, :input2)
  
  def initialize(input1, input2)
    @input1 = input1
    @input2 = input2

  end

  def anagram_checker

    input1_lower = @input1.downcase.gsub(/[^a-z\s]/, '')
    input2_lower = @input2.downcase.gsub(/[^a-z\s]/, '')

    vowels = ['a','e','i','o','u','y']
    input1_array = []
    input2_array = []

    input1_chars = input1_lower.chars
    input2_chars = input2_lower.chars
    
    input1_sorter = input1_chars.sort
    input2_sorter = input2_chars.sort

    @input1.each_char do |letter|
      input1_array.push(vowels.include?(letter.downcase))
    end

    @input2.each_char do |letter|
      input2_array.push(vowels.include?(letter.downcase))
    end

    if  input1_array.count != input2_array.count || input1_array === []
      "Please input a real word"
    elsif (input1_sorter - input2_sorter) === input1_sorter
      "This is an antigram"
    elsif input1_sorter === input2_sorter
      true
    else
    "These words are neither anagrams nor antigrams"
    end
  end
end