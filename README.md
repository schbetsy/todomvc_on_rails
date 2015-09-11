This is an updated clone of smidswap's Rails version of the TodoMVC project.

### Setup

1. Ruby 2.2.2, RVM, postgres, and bundler must be installed.
1. clone the repo
1. `bundle`
1. `rake db:create db:setup`
1. `rails s`

### Notes
This is a work in progress.
Note that my emphasis was on functionality, not design.
My specialty is back-end (server-side) development, so that's where I took the most care.

I have added the concept of subtasks to the TodoMVC project.
In doing so, I have made some changes to the user experience of the application:
In order to save time, I decided to use page refreshes to my advantage--
rather than using javascript to manipulate the DOM, I used Rails templates to show appropriate information when the underlying data change.
I also added a specs for model methods using RSpec.

In order to complete this work, there are some things that still need to be improved, for instance:

1. Filtering for 'active' and 'completed' would need to be redesigned to make sense for subtasks.
1. Javascript code and stylesheets should be reworked-- my work resulted in some redundancy and some code that is no longer used. These should be removed.
