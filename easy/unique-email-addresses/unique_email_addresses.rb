# https://leetcode.com/problems/unique-email-addresses/

# https://leetcode.com/submissions/detail/217784482/
# Runtime: 56 ms, faster than 90.55% of Ruby online submissions for Unique Email Addresses.
# Memory Usage: 11.1 MB, less than 13.51% of Ruby online submissions for Unique Email Addresses.


# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
    emails.map do |email|
        email.match(/^([^\+]+)(?:\+[^@]+)?(@.*)$/){ |md| md[1].gsub(/\./,'') + md[2] }
    end.uniq.length
end