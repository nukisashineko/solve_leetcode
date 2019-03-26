# https://leetcode.com/problems/two-sum/

# https://leetcode.com/submissions/detail/217771848/
# Runtime: 44 ms, faster than 83.78% of Ruby online submissions for Two Sum.
# Memory Usage: 10.9 MB, less than 5.16% of Ruby online submissions for Two Sum.

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    numberWithIndex = Struct.new(:num, :index, :hash)
    nums_with_index = nums.map.with_index{|num, index| numberWithIndex.new(num, index, rand)}
    hashed_nums_with_index = nums_with_index.map{|x| [x.num, x]}.to_h
    pair_a = nums_with_index.lazy.select do |a|
        pair_b = hashed_nums_with_index[target - a.num]
        pair_b && pair_b.hash != a.hash
    end.first
    equal_target_combination = [pair_a, hashed_nums_with_index[target - pair_a.num]]
    nums_indexes = equal_target_combination.map(&:index)
    nums_indexes
end