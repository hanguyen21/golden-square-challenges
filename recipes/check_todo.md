{{PROBLEM}} Method Design Recipe

1. Describe the Problem
   Put or write the user story here. Add any clarifying notes you might have.

# As a user

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO

Include the name of the method, its parameters, return value, and side effects.
'''ruby
track_my_task = check_todo(text)

# text is a string with words in it

# track_my_task is a boolean depending on the text

3. Create Examples as Tests
   Make a list of examples of what the method will take and return.

# EXAMPLE

1.  check_todo("") => fail "Not a sentence."
2.  check_todo("#TODO :buy eggs and milk") => true
3.  check_todo("buy eggs and milk") => false
4.  check_todo("I need #TODO buy eggs and milk") => true
5.  check_todo("there is a todolist") => false
6.  check_todo("I need #todo buy eggs and milk") => true

4.Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
