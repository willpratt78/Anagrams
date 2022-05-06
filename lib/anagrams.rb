class Anagram

  attr_accessor(:input1, :input2)
  
  def initualize(input1, input2)
    @input1 = input1
    @input2 = input2

  end

  def anagram_checker
    if @input1 === @input2
      true
    end
  end
end