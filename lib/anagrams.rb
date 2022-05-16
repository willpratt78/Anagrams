class Anagram
  
  def initialize(input1, input2)
    @input1 = input1.downcase.gsub(/\W/, ' ')
    @input2 = input2.downcase.gsub(/\W/, ' ')

  end

  def vowel_checker
    input1_array = @input1.split()
    input2_array = @input2.split()

    input1_vowel = true
    input2_vowel = true

    input1_array.each do |array_element|
      if (array_element.include? 'a') ||(array_element.include? 'e') ||(array_element.include? 'i') ||(array_element.include? 'o') ||(array_element.include?  'u') ||(array_element.include? 'y')
        input1_vowel = true
      else
        input1_vowel = false
      end
    end

    input2_array.each do |array_element|
      if (array_element.include? 'a') ||(array_element.include? 'e') ||(array_element.include? 'i') ||(array_element.include? 'o') ||(array_element.include?  'u') ||(array_element.include? 'y')
        input2_vowel = true
      else
        input2_vowel = false

      end
    end

    if input1_vowel == false || input2_vowel == false
      false
    else
     true
    end
  end

  def anagram_checker
    
    input1_sorter = @input1.chars.sort
    input2_sorter = @input2.chars.sort

    if vowel_checker == false 
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