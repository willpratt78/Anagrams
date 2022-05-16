require('rspec')
require('pry')
require('anagrams')


describe('#anagram_checker') do
  it('should compare if two words are an anagram') do
    inputs = Anagram.new("a", "a")
    expect(inputs.anagram_checker).to(eq("This is an anagram"))
  end
  it('should compare if two words with more than one letter are an anagram') do
    inputs = Anagram.new("ba", "ab")
    expect(inputs.anagram_checker).to(eq("This is an anagram"))
  end
  it('should check to see if something is an anagram despite capitalization') do
    inputs = Anagram.new("Ba", "Ab")
    expect(inputs.anagram_checker).to(eq("This is an anagram"))
  end
  it('should check to see if something is a real word') do
    inputs = Anagram.new("wR", "rW")
    expect(inputs.anagram_checker).to(eq("Please input a real word"))
  end
  it('should check to see if two words are anagrams regardless of capitalization') do
    inputs = Anagram.new("Tea", "Eat")
    expect(inputs.anagram_checker).to(eq("This is an anagram"))
  end
  it('should check to see if two words are antigrams or not') do
    inputs = Anagram.new("dog", "Tea")
    expect(inputs.anagram_checker).to(eq("This is an antigram"))
  end
  it('should check if two words are anagrams or not regardless of punctuation') do
    inputs = Anagram.new("The Morse Code!", "Here come dots!")
    expect(inputs.anagram_checker).to(eq("This is an anagram"))
  end
  it('should check if two words are anagrams, antigrams, or neither ') do
    inputs = Anagram.new("hello", "goodbye")
    expect(inputs.anagram_checker).to(eq("These words are neither anagrams nor antigrams"))
  end
  it('should take two anagrams with different amounts of spaces and return this is an anagram') do
    inputs = Anagram.new("don't anagram", "Not a Grandma")
    expect(inputs.anagram_checker).to(eq("This is an anagram"))
  end
  it('should take two inputs that are anagrams but contain fake words and return please input a real word') do
    inputs = Anagram.new("The Morse Code pkl", "Here come dots! lkp")
    expect(inputs.anagram_checker).to(eq("Please input a real word"))
  end
end