# https://leetcode.com/problems/jewels-and-stones/

# https://leetcode.com/submissions/detail/217781550/
# Runtime: 40 ms, faster than 90.54% of Ruby online submissions for Jewels and Stones.
# Memory Usage: 9.6 MB, less than 36.74% of Ruby online submissions for Jewels and Stones.

# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
    hashed_counted_s = s.split(//).group_by(&:itself).map{ |k, v| [k, v.size] }.to_h
    hashed_counted_s.default = 0
    j.split(//).map{|j_element| hashed_counted_s[j_element] }.inject(&:+)
end