Hello Dr. Crossan,

A few things came up whilst doing this coursework. Mainly in regards to the testing, it kept throwing up
a seemingly unsolvable error: "NoMethodError: undefined method `env' for nil:NilClass".

After searching online, apparently it has to do with Devise::TestHelpers and integration testing?

My other tests, however, seemed to pass fine. 

I tried to implement aspects, like having a superuser, that wasn't covered in lectures/labs properly
but ultimately I struggled to get it to work and back tracked to start over a few times.

My validations of shift (the time of ending must be after the shift start time) and timesheet can be found
in the controller and the testing for shift is in shift_test.rb

I also used mysql instead of sqlite3 but hopefully that won't cause any issues.

https://github.com/graceytlin/gl00233_com2025_project

Thank you.
Grace