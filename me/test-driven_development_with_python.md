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

## Extending Our Functional Test Using the unites Module
Didn’t know that old fashion is making a blog, post forum lol. Nowadays, they’re to-do lists lol. Let’s get on with it. 
[The secret to being a top developer is building things! Here’s a list of fun apps to build!](https://medium.freecodecamp.org/the-secret-to-being-a-top-developer-is-building-things-heres-a-list-of-fun-apps-to-build-aac61ac0736c)
-> This dude wrote a great list of what to actually make.

### Using a Functional Test to Scope Out of a Minimum Viable App
Functional Test == Acceptance Test == End-to-End Test
Dang, E2E was actually the same with Acceptance. Well isn’t integration test the same thing too? I think I should find the diff between. So integration testing was actually testing between two applications. A database and the server or something like that. But a functional test is actually a user story. A specification, something that really needs to be tested by human, but automated by this.
[testing - What’s the difference between unit, functional, acceptance, and integration tests? - Stack Overflow](https://stackoverflow.com/questions/4904096/whats-the-difference-between-unit-functional-acceptance-and-integration-test)

A word for comments. It’s pretty cool that the author explained about it. You shouldn’t write down `what` the code does. You should write `why` you wrote this code. You must name your variables, functions, classes, as intuitive as you can and structure it so good so that people don’t need to read any comments. 

### The Python Standard Library’s unitest Module
Well it’s just another `xUnit` thing in Python. The setup and teardown functions, way how you describe the test with the function name, and all the assertions and stuff. How many assertions for each test? Is there a rule? Or is it nice to shove it all in. Anyways, I learned an important thing in Python. 

```python
if __name__ == '__main__':
	# This statement is actually used to make this script a command line executable. It checks whether it should be imported or executed.
```

## Testing a Simple Home Page with Unit Tests
Everything’s going to get serious. Remember, you should try to learn by stop and thinking. Also, there’ll be moments when you could get a chance to learn some new debugging techniques. 

### Our First Django App, and Our First Unit Test
Just making a new app. Django thinks a project can have many apps. So we can just start a whole lot of apps by entering `./manage.py startapp {appanme}`

### Unit Tests, and How They Differ from Functional Tests
1. We start by writing a functional test, describing the new functionality from the user’s point of view.
2. Once we have a functional test that fails, we start to think about how to write code that can get it to pass (or at least to get past its current failure). We now use one or more unit tests to define how we want our code to behave—​the idea is that each line of production code we write should be tested by (at least) one of our unit tests.
3. Once we have a failing unit test, we write the smallest amount of application code we can, just enough to get the unit test to pass. We may iterate between steps 2 and 3 a few times, until we think the functional test will get a little further.
4. Now we can rerun our functional tests and see if they pass, or get a little further. That may prompt us to write some new unit tests, and some new code, and so on.

So the above is what I get. The functional testing is to get a hold of the high level of the application. After that, we get the low level of the application by implementing unit tests. The more unit tests pass, the more we’ll fulfill our functional test. Forest(functional tests) to trees(unit tests). 

### Unit Testing in Django
Write a failing test with the `Django TestCase` which is an extended version of the unittest.TestCase that has Django specific features. Haven’t seen them yet, but we’ll be able to see it in our journey. 

### Django’s MVC, URLs, and View Functions
Okay, Django has the good-old MVC pattern within the framework. So there are models, controllers(views.py) and views(Template engine or whatever). So the MVC does have all the same stuff there but, I wonder what the architecture of Spring is now. Since it has so many layers. The controller, service, repository. It’ll also have a lot of other stuff too. I wonder, but I might as well see it in the enterprise thingy. Anyways, we have failing functional and unit tests, we can finally code.

### At Last! We Actually Write Some Application Code!
So we actually just write a real minimum of the code to make it work. Then we just run the tests again and see if it runs. Can’t believe we have to go over this every time lol. Well anyways, this isn’t the thing. While the tests fail, there’s always going to have errors on the screen. We need to find it by reading the stack traces. We read them from the bottom and when we don’t know what it means then, we read it from the top. 

### urls.py
Just made a url mapping with a dummy view over here. I got to get some regex knowledge inside my head. Since the url patterns are used with regex and I need to get a hold of them when I make my bot at work lol. Since I have to use Korean as the commands, I need to use regex patterns to intercept the commands.

### Unit Testing a View
To test a view, it mostly checks the essential contents of an HTML page. But I think this will need to get refactored to another function and test all of the view templates that are going to get tested. Since all of the views will have that part, but what about the parts where we give Ajax requests and give an html view for it? I’m not sure whether to think about this, but I don’t think it’ll be a good idea for the server to do some view manipulation stuff at the controller level or somewhat. 

### The Unit-Test/Code Cycle
So the cycle is pretty much feel redundant at some point. Because you have a write a test and write the most smallest code that you can write that addresses the failure of the test and repeat. Why not just write a whole lot of code and make some test code out of it? I’m not sure which one is actually write, but it pretty is hard to know what to do what.
 I think the author wants to say, change minimal code and keep testing until the tests clear. 

## What Are We Doing with All These Tests? (And, Refactoring)
There are a lot of questions that I have to ask myself or the guy that’s explaining TDD to me. But the thing is, we’re trying to write good code. Readable and testable. The reasons that I’m trying to get this in my skill set is:
* Write down features for everyone and the developers to read.
* Write code that I really need.
* Get confidence for the code I’ve written.

### Programming Is Like Pulling a Bucket of Water Up from a Well
Dang, the more the test coverage the better, is what’s the author is talking about. So if the function is that trivial, why not just write a line of code! Since it’s that simple and trivial, you can just write down a test that easily. It’s pretty much a great thing if you think about it like 
 The important thing to catch over here is, get your mind to actually write tests like, you have to. If you don’t do it, then a murderer will kill you while testing your code lol. If you don’t make it clear, then he’ll get angry.

### Using Selenium to Test User Interfaces
Man, if you get to write good tests, you’ll never lose tracks of what you were doing. You can just get back to what you were doing by just running the tests again!
 Dang you can use selenium to actually type in words and check all the stuff in the html elements and the attributes inside the elements. It’s like jQuery lol. Well anyways, there’s something called an `explicit` wait that I need to keep in mind. We just sleep for 1 second over here, but I think we could make it event driven and do something when the page loads after the event. 
 Also, another word for committing code. More atomic, the better.

### The “Don’t Test Constants” Rule, and Templates to the Rescue
What should we not test? Obviously templates are there for just writing down html in another file. What are constants in the testing context? So really, things that don’t change. Once constants are declared, they don’t change. So testing that would be pointless. If it were to change, then we would have a point in changing it. So that’s why we don’t test immutable things? Unit tests are more of testing input, output, logic, control structures and all of that.

#### Refactoring to Use a Template
Well there’s nothing much in using templates. Obviously, template engines are going to completely dead in the future? Well not completely dead since server developers will need a way to just create html stuff on the fly. Not much to worry though. I hope people in the frontend will save the backend people!

#### The Django Test Client
The Django test client has a lot of features. It has a built in http client which is pretty cool. Also does all the template assertion. I think it would be a great idea to write a library that wraps around `JUnit` and does special tests for Spring Framework. I think there would be one out already but I’ve never used it or never seen one. It’ll be great to actually have a go though. I wonder whether there’s a great assertion for REST API response!

### On Refactoring
Remember, refactoring is changing the code without changing the functionality. Make it more readable, and reduce the code. Also, refactor the functioning code OR the test code. Don’t refactor them at once.

### A Little More of Our Front Page
I did a go by incrementing just one assertion at a time. So I just repeat until I have no assertions to verify. It’s pretty cool. It lets me to think computational. One by one, I solve a failing test, and after I finish all the tests, then I get a chance to refactor the tests, and the code. I’m still doing the table part, but that’s for the next chapter.

### Recap: The TDD Process
TDD practice
* Functional tests
* Unit tests
* The unit-test/code cycle
* Refactoring

The `write minimal code` part is abstracted into the unit test TDD cycle in functional tests. So it’s actually an ultimate cycle, the functional tests represent the sake of the application. If those don’t pass, the app is absolutely not functional. 
 All we need to know is, doing the same TDD cycle. Write a test, write “minimal” code and refactor either the test or implementation, and write a test again when the tests pass. 

#reading/books