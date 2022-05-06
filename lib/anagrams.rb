class Anagram

  attr_accessor(:input1, :input2)
  
  def initialize(input1, input2)
    @input1 = input1
    @input2 = input2

  end

  def anagram_checker
    input1_chars = @input1.chars
    input2_chars = @input2.chars

    imput1_sorter = input1_chars.sort
    input2_sorter = input2_chars.sort
   
    if imput1_sorter === input2_sorter
      true
    end
  end
end