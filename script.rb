#!/usr/bin/ruby
require('./lib/anagrams')

puts 'Please enter your first word or sentence'
input1 = gets.chomp
puts 'Please enter your second word or sentence'
input2 = gets.chomp
check = Anagram.new(input1, input2)
puts output = check.anagram_checker
