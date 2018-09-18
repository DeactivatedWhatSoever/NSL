# Test-Driven Development with Python
[The Book](https://www.obeythetestinggoat.com/pages/book.html#toc) -> This is the actual book and it’s free. Which I really can’t believe the author just did all that like that. It’s pretty much a really long book, but it sure does a great job on teaching TDD. I wish to achieve this skill by going around the material and actually get think about the internals of why they made this test case, and how they implemented that test. 

## Preface
The guy really did some research and had a lot of experience on the bright sides of TDD. I wish I had that kind of experience. But the thing is, that you don’t code that much. You don’t make stuff. If you finish book, promise me that you have to actually code something from now on. You have to write code and start to do that stuff. You must be able to just write down code from the tip of your tongue. If you can’t you won’t be able to get to the next level. You need `experience`. 

## Prerequisites and Assumptions
We’ll be using Python 3.6! Which is pretty cool since this book has come out from a certain amount of time. I’m pretty excited to see the code in that way. Hope to get a lot of great conventions in mind. 

Oh yeah, we need drivers to actually run Selenium. It’s a sort of web scraping thing, plus a browser testing framework I think. It’s for UI automation testing. It really is pretty cool if you’re the only one doing all the testing. Just run the tests, and deploy! 

## Companion Video
[Test-Driven Development - O’Reilly Media](http://oreil.ly/1svTFqB) -> Just FYI.
And the journey begins.

## Getting Django Set Up Using a Functional Test
Ooh, it’s pretty friendly that there’s something called `The Testing Goat` that makes us actually do TDD. It’s a discipline that I have to follow. 

### Obey the Testing Goat! Do Nothing Until You Have a Test
* Write a failing test
* Implement and pass the test
* Refactor
* Repeat

I just wrote my first test! `functional_test.py`. The author says something about functional tests and unit tests. They are different. I think it’s referring to the system part. So, behaviors, features, are actually meaning the `functions` of the software, and in the internals, we use `unit` testing. 
 The `functional_test.py` file only just opens Firefox and checks whether the title has “Django” in it. But still, I actually learned that browsers are actually testable with `Selenium`. I don’t mean that we don’t need QA, it’s just that we would have so much advantages for both QA and us. If we’re a small start up then it would be way easier to actually run tests and just go for it! I’m already starting love this since I got to know how important this is. 

### Getting Django Up and Running
```sh
# Init Django project
$ django-admin.py startproject superlists .
# Run development server
$ python manage.py runserver
```
Real important thing over here is, you have to see what Django does when you init a project. The `manage.py` file must have all the commands! I’ll go through what that dude has and get into it. Django pretty much has a lot of stuff in it. It sure is a big framework since it does a lot of stuff for me. 
 The `superlist` directory has three files. `settings`, `urls`, and `wsgi`. Obviously the settings has all the modules, middleware and all that global setting stuff. The urls will have the urls, and WSGI will have all the web server settings and all that stuff. Exactly what you need to actually implement a web application. There’s some Django specific modules and middleware, the urls are specified in one file to see the global stuff. Web application server stuff, I think that’s all done by like, Django has all the uWSGi or all that web server stuff built in. I think it’ll have some setups for each application server. 
 I’ll go for ask help to `manage.py` and see whether what I can learn from it. I’ll explore this stuff slowly, and try to see why they need this and that. Once I have a depth of this, it’ll be way easier for me to learn the framework. Well, I already feel like that I know a lot lol. Don’t be arrogant man!

### Starting a Git Repository
There was absolutely nothing much over here. Just making a repository and making your first commit. It also has `.gitignore` and all that stuff. 

#reading/books