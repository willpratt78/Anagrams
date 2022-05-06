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
  it('should take wR and rW and return true') do
    inputs = Anagram.new("wR", "rW")
    expect(inputs.anagram_checker).to(eq("Please input a real word"))
  end
end