require('rspec')
require('pry')
require('anagrams')


describe('#anagram_checker') do
  it('should take a and a and return true') do
    inputs = Anagram.new("a", "a")
    expect(inputs.anagram_checker).to(eq(true))
  end
  it('should take ba and ab and return true') do
    inputs = Anagram.new("ba", "ab")
    expect(inputs.anagram_checker).to(eq(true))
  end
  it('should take Ba and Ab and return true') do
    inputs = Anagram.new("Ba", "Ab")
    expect(inputs.anagram_checker).to(eq(true))
  end
  it('should take wR and rW and return please input a real word') do
    inputs = Anagram.new("wR", "rW")
    expect(inputs.anagram_checker).to(eq("Please input a real word"))
  end
  it('should take Tea and Eat and return true') do
    inputs = Anagram.new("Tea", "Eat")
    expect(inputs.anagram_checker).to(eq(true))
  end
  it('should take Tea and dog and return this is an antigram') do
    inputs = Anagram.new("Tea", "dog")
    expect(inputs.anagram_checker).to(eq("This is an antigram"))
  end
  it('should take The Morse Code and Here come dots! and return this is an antigram') do
    inputs = Anagram.new("The,!!!!. Morse, Code..!!", "Here come dots!")
    expect(inputs.anagram_checker).to(eq(true))
  end
end