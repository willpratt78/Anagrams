class Anagram

  attr_accessor(:input1, :input2)
  
  def initialize(input1, input2)
    @input1 = input1
    @input2 = input2

  end

  def anagram_checker

    input1_lower = @input1.downcase
    input2_lower = @input2.downcase
    
    input1_chars = input1_lower.chars
    input2_chars = input2_lower.chars

    input1_sorter = input1_chars.sort
    input2_sorter = input2_chars.sort
   


    if input1_sorter === input2_sorter
      true
    end
  end
end