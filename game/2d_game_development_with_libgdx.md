# 2D Game Development with libGDX
This is for game development! I’m finally going into game development business! It’s time for me to actually get in business. I’ll start with Java as I always have lol. 

# Cross Platform Games
I wonder how cross platform is actually done! Can the the phones actually just run a game engine just like that? How is it done! Gotta go and find out!

## What We’re Going to Build
Icicles. Just dodging falling stuff type of game. I guess it’s the best example for doing something first. 

## Introductions
Just introductions of each instructor. 

## Games vs Other Apps
* Game Loop
	* Input Polling
* Custom Drawing
	* UI / HUD
	* Game World
	* Special Effects / Animations

* Physics
* AI
* Exotic Input Devices
	* Controllers
	* Accelerometers
* OOP
	* I think it’ll be a really cool way to learn OOP in a better way.

## Formative Assessment
Just wanna be an indie developer that does a huge impact! One person impact is absolutely the best.

## Decomposing a Game
You write down or find a great description of a game that you really want to build. Remember, OOP is about getting all the objects you need, and finding what those objects need to do. So we’ll find the nouns first, as you learned at that Coursera course. 
 Find what classes(nouns) you need and see what they can represent. 

## Practice Decomposing a Game
Remember, it’s practice!
1. Write a precise description of Pong
2. Underline all the nouns
3. Come up with a list of classes Underline all the verbs
4. Come up with a list of methods

Pong is a game where there’s a ball that ping pongs in an arena. There are two players with a reflector that reflects the ball when it collides. When the ball doesn’t collide with the reflector, the player gets a score of 1 and that score is displayed on the scoreboard. 

## Aside: The First Video Game
Spacewar! 1962! It was first created in MIT! Yep … I love MIT!

## What Is a Game Engine?
It’s a huge package of libraries that helps us make games. It’ll have all the physics and stuff right? All the collision detection, drawing stuff, moving the asset around, etc. 
 They’re more referred as frameworks!

## Inversion of Control
You don’t call us, we call you. 

## Game Platforms
There’s a lot of platforms that games can be run on. But how do we do cross platform?! We’ll find out!

## Intro to LibGDX
So the draw method and all that, if the user code wants to draw something, LibGDX detects with the platform is, and calls the OS methods or whatever platform specific method to do the task that the user asked for. So LibGDX will keep on delegating until it gets what it wants. In result, the people who made this framework will have to implement everything for each platform right? It’ll have a interface, and a implementation for each platform in the end!

## Cross Platform Awesomeness
It’s just a level up thing that this course gives lol.

## Course Prerequisites
* Java(Maybe have a go with Scala?)
* OOP
* Documentation Reading Skills
* Android Studio -> I’d rather go with IntelliJ
* Mobile Device

Grit. I’m going to read that book!

## Scheduling
Consistency, and Grit. It’s just whether you do it even a few minutes or not. That’s the most important thing. 

## On the Calendar
Level up!

## Icicles and How to Get There
Just going to get there! 

## Story Time!
Just talked about the mobile revolution. Also that it hasn’t been a long time since we actually had the revolution. We have a lot of opportunity, and we’re going to get there!

# Getting Started with LibGDX
Getting started with the framework!

## Level Map
We’ll get an Android and a Desktop app up!

## Feedback
I wonder whether everything will be up-to-date. Let’s try and get everything done and even reporting if it’s necessary!

## Git
Oh, so we have to actually code stuff. 

## Download the Course Code
Just git clone it, and read the README and just learn like that. 

## Exploring the Code
There’s not much to explore since it all has this and that in the code. So we’re just going to have a look of Gradle.

## Gradle
It manages all the libraries for you. So that’s just it. 

## Install Android Studio
Just install it, but I’m going to use IntelliJ

## Tooled Up
Level up!

## Configure Android Studio
Just installing the Android SDKs that you need to run a LibGDX project in Android. 

## Import a LibGDX Project
Just imported the project! Open and done. 

## Import Duties
Level up!

## Run the Desktop App
`$ ./gradlew desktop:run` and done. {platform}:run I guess.

## libGDX Project Structure
`.gradle` -> Gradle cache and stuff
`.idea` -> State of the workspace

## Run the Android App
`$ ./gradlew android:run`

## The iOS and HTML Backends
It’s really hard to setup iOS and HTML backends since there are a lot of stuff to do. We’ll get this when we actually need it to so don’t worry. Maybe when I finish the game, I’ll make an iOS app out of it. 

## Make a Change
Just change the color of the screen. It’s just easy. 

## Recap
All we did was mostly just … setting up the development environment.

## Story Time!
Just a story about the dude that tells how he got through the 3D renderer that he didn’t even knew about. He traced all the code and saw what was working and stuff. It was pretty neat actually. 

#mooc