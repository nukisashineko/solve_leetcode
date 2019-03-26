# https://leetcode.com/problems/unique-email-addresses/
# https://leetcode.com/submissions/detail/217784482/
# Runtime: 56 ms
# Memory Usage: 11 MB


# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
    emails.map do |email|
        email.match(/^([^\+]+)(?:\+[^@]+)?(@.*)$/){ |md| md[1].gsub(/\./,'') + md[2] }
    end.uniq.length
end