require('rspec')
require('pry')
require('anagrams')


describe('#anagram_checker') do
  it('should take a and a and return true') do
    inputs = Anagram.new("a", "a")
    expect(inputs.anagram_checker).to(eq(true))
  end
  it('should take a and a and return true') do
    inputs = Anagram.new("ba", "ab")
    expect(inputs.anagram_checker).to(eq(true))
  end
end