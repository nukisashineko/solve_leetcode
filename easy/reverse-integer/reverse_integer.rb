# https://leetcode.com/problems/reverse-integer/
# https://leetcode.com/submissions/detail/217778025/
# Runtime: 40 ms
# Memory Usage: 9.6 MB


# @param {Integer} x
# @return {Integer}
def reverse(x)
    sign = (x > 0 ? 1: -1)
    reversed_abs_x =
        x.abs
            .to_s.split(//).reverse
            .drop_while{ |char| char === "0" }.join
            .to_i

    reversed_signed_x = sign * reversed_abs_x
    if - 2 ** 31 <= reversed_signed_x && reversed_signed_x <= (2 ** 31 -1)
        reversed_signed_x
    else
        0
    end
end