-- link: https://leetcode.com/problems/delete-duplicate-emails/solutions/55553/simple-solution/

-- solution:

DELETE p1
FROM Person p1, Person p2
WHERE p1.Email = p2.Email AND
p1.Id > p2.Id