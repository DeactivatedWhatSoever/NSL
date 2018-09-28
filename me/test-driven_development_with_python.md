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

## Saving User Input: Testing the Database
Doing one thing at a time is the key of TDD. But you also get the chance to think about the forest. I think I’m getting a head of this. 

### Wiring Up Our Form to Send a POST Request
CSRF -> Should get a sense of security. You know SQL injection, but you don’t know CORS or CSRF. I think it’s a time for you to actually get this stuff in the way. You always pass them as if you’d never have to deal with them. Let’s go to that YouTube channel or what not to get this in your long-term memory. 
 Oh yeah, we only used some HTML to do a POST request. The server doesn’t have anything to respond so it just refreshes. Need to implement the next part in the next section.

### Processing a POST Request on the Server
We do process it in the `views.py` part. Which is the controller, but shouldn’t this have another function that does it? Not just put in an if statement and check whether it’s POST or not and do this and that. Don’t think it’s a good practice.

### Passing Python Variables to Be Rendered in the Template
You can just pass in the variables to the render function. I think it’s the same as the `ModelAndView` thing in Spring. You put in the view, and put in the data that you need. So, it’s pretty much how web services were made. Since the web services didn’t want to refresh everything, that’s when the frontend stuff came in. 

#### An Unexpected Failure
This is the best part of writing tests. This is called regression. If you are break something, you’ll get a failing test. When you feel dull, or you’re doing some drunk coding, then it’ll be the best for you to do this. I love it. 

### Three Strikes and Refactor
DRY(Don’t Repeat Yourself)! If you start to get a lot duplication, then, that’s when you get to refactor. It’s a really good factor to start with refactoring. Remember, code OR tests! Make your commits atomic!

### The Django ORM and Our First Model
Daaaaang, the author doesn’t explain about integrated tests at the moment. It will be discussed later in the book. 
 I need to check about the ORM! See if there’s a functional version and see how everything is managed inside. How Hibernate and SQLAlchemy does this and that. 

#### Our First Database Migration
`./manage.py makemigrations` -> Just the same as db migrate in rails. Nothing new!

#### The Tests Get Surprisingly Far
It’s just a few words about the Python language. Sometimes the tests can go really far and you’ll have to figure out on your won because of the Python language is pretty generous. 

#### A New Field Means a New Migration
So when you do anything to the model, you have to do a new migration. That’s how you track versions of your database. You don’t need to manage the `sql` schemas by yourself.

### Saving the POST to the Database
Remember, use `FIXME` and `TODO` to not get interrupted from coding the current feature. You may encounter some problems on the way, but it’s sometimes better to just go on with the thing that you were doing. If there’s a major problem, then you should do a rethink. 

### Redirect After a POST
You have to redirect after a POST because of the double POST problem. When you do a POST request, you’ll actually be on the same URL, which means you’ll do another submit. But if you get redirected, you’ll have a different URL on refresh.

#### Better Unit Testing Practice: Each Test Should Test One Thing
Try to break the tests as tiny as you can. If you have multiple steps for a test, it won’t be easy to find which test is failing. So rather just make the tests tiny as you can, in other words, put one assertion for each test. If you’re testing multiple items, you can use more than one assertion. 

### Creating Our Production Database with migrate
Okay, we created a production database with `./manage.py migrate`. But the problem is, shouldn’t the functional tests also be inside a test database?

### Recap
Just recapping!

#### Regression
When new code breaks some aspect of the application which used to work.

#### Unexpected failure
When a test fails in a way we weren’t expecting. This either means that we’ve made a mistake in our tests, or that the tests have helped us find a regression, and we need to fix something in our code.

#### Red/Green/Refactor
Another way of describing the TDD process. Write a test and see it fail (Red), write some code to get it to pass (Green), then Refactor to improve the implementation.

#### Triangulation
Adding a test case with a new specific example for some existing code, to justify generalising the implementation (which may be a "cheat" until that point).

#### Three strikes and refactor
A rule of thumb for when to remove duplication from code. When two pieces of code look very similar, it often pays to wait until you see a third use case, so that you’re more sure about what part of the code really is the common, re-usable part to refactor out.

#### The scratchpad to-do list
A place to write down things that occur to us as we’re coding, so that we can finish up what we’re doing and come back to them later.

NOTE: Check out PDB! Python Debugger! I think this is the ultimate tool to actually debug Python. 

## Improving Functional Tests: Ensuring Isolation and Removing Voodoo Steps
So we'll be refactoring the functional tests and make it actually scalable. We only put it in one file and it does some stuff like `time.sleep(1)` stuff. Which is not really a good practice. We don't want `constants` to interfere. We need actual computed values. So we'll be getting this stuff done. 

### Ensuring Test Isolation in Functional Tests
We made a new Django app for the `functional_tests`. It does seem a good choice but I'm wondering whether if we need new functional tests, we make a new file for it. Since all the views are all in one, the models are all in one, I'm really not sure whether this is right. Do we need an app for every model? Or domain? I don't know the philosophy of Django. Gotta get to know it. 

#### Running Just the Unit Tests
We need to just run the modules that we want. Like we only have `lists`, so we just put that in for the test command as an argument.

### Aside: Upgrading Selenium and Geckodriver
Okay, sometimes the Firefox or Chrome or whatever browser just upgrades. When that happens, the functional tests might not run again. So we need to upgrade Selenium and the drivers for the browsers. We need to keep up with the versions mate!

### On Implicit and Explicit Waits, and Voodoo time.sleeps
The selenium library has implicit waits, but `time.sleep` is an explicit wait technique. We don't know what constant to put in. I wish there could be a great way to just know when to get the elements, when the browser has got all the things up. I think these kinds of tests should be done by the frontend. Since the frontend could get the events of the driver and stuff. I don't think template engines should do this kind of stuff. There should only be integrated tests and unit tests in the server, and functional tests should be in the client. Since it's a black box testing method, we only should just get the call the API and do the UI checking at the frontend level.

## Working Incrementally
So, by working incrementally, we can adapt to existing code with TDD. Let's find out how it really is implemented then. 

### Small Design When Necessary
This is the part that I didn't like about TDD. Why can't we think about the whole forest? Does this mean that the forest isn't needed? We only look at trees? Or do the functional tests represent the forest. I'm pretty confused of the `scope` of the forest. But still, let's keep on going then.

#### Not Big Design Up Front
So designing the whole architecture up front is actually a very traditional way. So the agile philosophy is that you learn more in practice that theory. So that’s why they take small incremental steps. 

#### YAGNI!
You ain't gonna need it. This really goes with abstraction. Some times, you don't really need the abstraction that you think of. It seems that the future isn't that close. You start to make everything big and big, and when it gets too big, you're too late to actually go back. You have to put in mind, the dude that's going to need it will implement when it is need. You will implement it when you really need it. So, you ain't gonna need it now.

#### REST (ish)
Since we're just making the app with plain HTML and no JavaScript, we can't use other HTTP request verbs. So that's why the author is just going over this part. 

### Implementing the New Design Incrementally Using TDD
Write a functional test, TDD, and when the test doesn't past, go for another layer of TDD except they're unit tests. 

### Ensuring We Have a Regression Test
How did we ensure? We added another functional test. That functional test was all about the new features that we were going to add, and all about solving the problems too. With these functional tests, it sure felt safe to code again!

### Iterating Towards the New Design
We get tempted on changing everything, it's called the refactoring cat lol. Well anyways, when we start to change everything and just run the tests, it won't work that way. We make a working state to a working state. Incrementally step by step, that's what we want in an agile manner of TDD.

### Taking a First, Self-Contained Step: One New URL
Writing a new test whether the url gives us our desired result. The list of my to-do items.

#### A New URL
`lists/the-only-list-in-the-world/` -> Add this. Actually, I have a question about this. The trailing slash, why like that? And I guess the `lists` is in front but it doesn't have a slash. So we need to put a slash on the end I guess.
 By the end of this section, I got to actually finish all the failing tests except for the multi-list test. Nice going. I love it how the author explains the thought process from the failing tests. You see the tests fail, and you think what you need next, and see what you need more. 

### Green? Refactor
So we always have to think when we get into a `Green` faze. whether to refactor or keep going and write a test. We've found some unnecessary tests and deleted them, and going to write one for the other view that shows the list of to-do items.

### Another Small Step: A Separate Template for Viewing Lists
Did a lot of stuff over here. We didn't actually get the functionality of two separate views. That's done. But still, we went to the next step of our design without destroying anything. The app is pretty simple, but it really is cool that I didn't break anything dramatically. I did it one by one. So cool.

### A Third Small Step: A URL for Adding List Items
* Adjust model so that items are associated with different lists
* Add unique URLs for each list
* Add a URL for creating a new list via POST
* Add URLs for adding a new item to an existing list via POST

So, I'm pretty curious of how you make anonymous users. Is it just guest stuff? And that's all? There must be an identifier to keep tracking them. If it's a phone, we could just use that ADID or UUID or something, or if it's something like a browser, I don't know an IP address? Let's try and think about or research it some day.

#### A Test Class for New List Creation
Just a new test class for new lists. So the classes are actually identifiers of each little function. Not really special or something. Yeah, since in Java, you have to make each class for each test. Since Python is so small and readable, I think that's pretty much the reason this is possible.

#### A URL and View for New List Creation
Just added a nice view an url pattern for creating new to-do lists!

#### Removing Now-Redundant Code and Tests
Yep, the home GET api only needs to give the home page now. All the POST stuff is finally divided apart!

#### A Regression! Pointing Our Forms at the New URL
Since the form URLs have changed, I have to change them in the template. But I used my regression! That was really cool. I could just spot where the problem was.

### Biting the Bullet: Adjusting Our Models
Okay, I'm going to experience some Django ORM stuff over here. But it's gonna be very basic. A foreign key relationship!

#### A Foreign Key Relationship
`models.ForeignKey(Model, default=None)` One to one, one to many, many to many, etc. Hope to get a grasp in the future.

#### Adjusting the Rest of the World to Our New Models
Yep, we just associate the list, which means, we make a new list and stick it inside the items. But I think there'll be a problem ... Since there'll be a new list every time we make a new to-do item!

### Each List Should Have Its Own URL
It's pretty cool how Django uses regex for URL patterns. But I'm just wondering about how Django responds to HTTP verbs. Is there a good way for this? Yeah, there are `view decorators` in Django. [View decorators | Django documentation | Django](https://docs.djangoproject.com/en/2.1/topics/http/decorators/)

#### Capturing Parameters from URLs
`(.+)` says it captures all parameters. You can just pass another parameter through the view functions. Which is the controller.

#### Adjusting new_list to the New World
 Just adjusting the URLs that were only used for one. 

### The Functional Tests Detect Another Regression
When I ran the functional tests, I got another regression! It's so cool that this keeps on happening. Well anyways, I need to fix the global problem about adding items to the list thingy.

### One More View to Handle Adding Items to an Existing List
Well we need to add an item to an existing list. I don't know why we need a new view, but lets just follow.

#### Beware of Greedy Regular Expressions!
`(.+)` -> This regex captures everything behind. `(\d+)` only captures digits. I wonder, if there's a better way than just putting in regex. I think the Flask way is way better lol.

#### The Last New URL
* Add URLs for adding a new item to an existing list via POST
* Refactor away some duplication in urls.py
	* Ooh this is interesting. Wonder how.

#### The Last New View
The code looks so identical to the `new_item` thing. Want to change this ASAP. Hope the author goes that way.

#### Testing the Response Context Objects Directly
The `response.context` in the tests are actually the items passed to the render function. So you can actually test the contexts and see whether it gets passed or not.

### A Final Refactor Using URL includes
Didn't know you could just split out your urls. That's pretty good really. Anyways, remember the TDD philosophies you got from this chapter.
* Working State to Working State (aka The Testing Goat vs Refactoring Cat)
* Split work out into small, achievable tasks
* YAGNI

#reading/books