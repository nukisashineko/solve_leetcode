# https://leetcode.com/problems/unique-morse-code-words
# https://leetcode.com/submissions/detail/217787079/
# Runtime: 44 ms
# Memory Usage: 9.7 MB

# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
    morse_codes = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    hashed_morse_codes = ('a'..'z').zip(morse_codes).to_h

    morse_coded_words_lazy = words.lazy.map do |word|
        word.split(//).map{|char| hashed_morse_codes[char] }.join
    end
    morse_coded_words_lazy.uniq.force.length
end
