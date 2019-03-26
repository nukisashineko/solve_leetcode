# https://leetcode.com/submissions/detail/217781550/
# Runtime: 56 ms
# Memory Usage: 9.5 MB


# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
    hashed_counted_s = s.split(//).group_by(&:itself).map{ |k, v| [k, v.size] }.to_h
    hashed_counted_s.default = 0
    j.split(//).map{|j_element| hashed_counted_s[j_element] }.inject(&:+)
end