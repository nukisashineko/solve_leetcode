# https://leetcode.com/problems/unique-morse-code-words

# https://leetcode.com/submissions/detail/217787079/
# Runtime: 44 ms, faster than 81.30% of Ruby online submissions for Unique Morse Code Words.
# Memory Usage: 9.7 MB, less than 50.00% of Ruby online submissions for Unique Morse Code Words.


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
