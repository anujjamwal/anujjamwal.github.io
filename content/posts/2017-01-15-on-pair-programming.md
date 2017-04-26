---
title: "On Pair Programming"
created_at: 2017-01-15 23:45:51 +0530
kind: article
draft: true
---

<!-- more -->

Pair programming is perhaps one of the most talked about, yet least implemented Agile practices. As a Software Developer practicing this for a little over four years now, the skepticism in everyone's minds is both confusing and disturbing at the same time to me. 

Wikipedia describes *Pair Programming* as

>Pair programming is an agile software development technique in which two programmers work together at one workstation. One, the driver, writes code while the other, the observer or navigator, reviews each line of code as it is typed in. The two programmers switch roles frequently.

Honestly, this definition has all the reasons to cause confusion. The frequent ones which I have heard from clients, managers and other developers alike include:

1. Two people working on the same workstation, that means a dip in the velocity. Would we now deliver half the features ?
2. It would work when people are at the same "level". It would not work when a lead is pairing with a fresher or the pair is imbalanced in terms of skills, experience, motivation etc.
3. We need a code reviewer to merge the changes. Why have a person contantly reviewing the code when we will anyways have a code review ?

In this post, I will try to address these and explain my interpretation and work style of Pair Programming.

## What is Pair Programming

![Wikipedia Image on Pair Programming](https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Pair_programming_1.jpg/660px-Pair_programming_1.jpg)

Lets start with what pair programming really is. Wikipedia explains pair programming with the image above. In the image you can notice one person holding the mouse and keyboard and the person to the left having some papers on the desk and pointing towards the screen possibly explaining some issue or directing the co worker. I however like the setup in the image below much better and more usable. There is one monitor, a pair of keyboard and mouse for each developer.

![What is Pair Programming Red Airship](http://www.redairship.com/wp-content/uploads/2016/10/What-is-Pair-Programming-Red-Airship-1024x696.jpg)

So during the standup, a pair signs up for a story. The understand the specifics in a quick discussion with product owner and technical details with team. The pair then starts working on the story together. In the beginning one of them is coding and the other is reviewing the code. After a while they switch roles and now the other person takes control of keyboard.

There are some ground rules that should be followed religiously inorder to really harvest the benefits of pair programming:

1. The pair should sit and work on their story consistently. No one in the pair is a free navigator or in other words come and go within the day. In case one person has some work, it is prudent to actually split and form a new pair. 
2. All coding is done by the pair together. There is no room for one person completing the code on his/her own at home or out of office. I remember, in one of my projects, one colleague actually had his pair delete the entire code that was written by his pair at home and reverted to the state at end of last day. This is important because such bypasses diffuse the purpose of pairing. Some might argue in favour of person whose code was deleted, but if you think of it, in a pair programming setup it is the pair's story and not individual's. Second working at home on a new story should anyways never be required in a team. The necessity for working at home is an indicator of a deeper project and management issue.
3. Everyone should pair with everyone else. The concept of **favourite partner** is an indicator of a poor team dynamics; poor cohesion. Ensuring that everyone on team pairs with everyone else improves team dynamics, comfort and interpersonal understanding. It improves confidence in team members and accelerates learning. Utimately, only a cohesive team is a productive team.
4. Both the members in the team are just **developers**. When in a pair, both the members are the same. There is no room for any categorization of people say lead, architect, seasoned developer or whatever. Everyone is the same. They should discuss out each and everything. Doing so instils confidence in freshers and empathy and humility in the seasoned developers. The utmost truth is that in a pair, no one has the right to order and no one is oblidged to follow. The pair discusses out everything. They do not proceed until they have sorted out each and every question arising in the mind of any member, however trivial it might seem.
5. Everyone in the pair has to write code. Everyone in the pair has to review code. The practice of one driver and one coder pairing is of no use. This ties to the last point of everyone being a **developer**. This practice accelerates growth and learning amongst the team members. While it keeps the seasoned developer well grounded with the code, it helps the fresher learn from the more experienced pair. It becomes a motivation for the both to learn and read better.


## Pair Programming and TDD

Pair Programming works best when coupled with Test Driven Development aka TDD. TDD is the practice of writing tests before code. This is simple order shift makes a whole lot of difference in the output. (more on this in upcoming post). Book TDD by example.

Coupled with TDD, the pair in morning signs up for the story. Post a discussion with Product Owner and QA, as they sit to to start development, they discuss about the story and the starting point.  The first thing that happens is that one of them, say Mr A, writes a test case for the discussed part and the other person, say Mr B, reviews the test code. Now, Mr B writes the code just enough to pass the test and Mr A reviews the code. Once the test is passed, Mr A continues to more test while Mr B passes these tests. After a while they switch roles and now Mr B writes tests while Mr A writes the code to pass the test. This style of coding is also called the Ping Pong style of coding. 

This practice makes all the sense in the world. Developers are very lazy and optimistic beings. When having to follow TDD on their own they generally tend to falter and skip some test cases. Sometimes they are eager to write code and skip tests to end which are then never written because developer will make all the excuses of the code being dumb and dead simple and that is where the rot begins. On the other hand when done with Pair Programming, one person in the pair is solely responsible for writing tests (until the switch in role) and he/she writes test code for everything and challenges the counter part to pass the written test. In a way we gamified the process. The outcome is code with very high and sane test coverage. 

## Pair Programming and War on Knowledge Islands

You have knowledge islands in you project when you hear 

* "This feature was worked on by Mr X, he knows how it works" 
* "I know Mr X is on a vacation but we need an urgent fix for this functionality, call him up"

Having knowledge islands in a project is deteremental to the overall delivery speed and cycle. This should ideally not be a problem in agile teams because agile focusses on Collaboration and Communication, but in real world it is still an issue. Teams try things like holding brown bags or common communication channels. Pair programming naturally eliminates this issue. For one, people always work in pairs so it is always two people who know about the low level details of story and implementation. (Book Agile software development)

Pair programming is also coupled with the practice of Pair Rotation. Under this practice, a pair can only continue to work on a story for maximum of 2 days. Post two days, one person moves out to another story and someone earlier working on another story joins this pair. Since one person stays back, the story work is not impacted. The new person joining the pair works hands on the story and builds up knowledge on the work. Another two days and the pair again rotates, this time the person who stayed back last time has to moveout and a new person joins the pair. Essentially

* One person works on the story for a maximum of four days.
* Pairs keep rotating and more that two people build hands on knowledge on the story.

This practice uproot the very problem. This practice also help elevate team bonding and comfort. A goal here is that everyone should pair with everyone and Manager should ensure that is happens. One way to track the health of pairing is by using a Pairing Matrix. For a team of n members, a pairing matrix is a grid sized *n x n* where row and column headers are the team members. For each instance of pairing between two people one bar is added to the corresponding cell. This depicts how often are two people pairing and goal is to have the matrix homogenously filled.
 (Image of Pairing Matrix)

Naturally, such an arrangement of people rotating on on going story is impossible without pairing because delivering value to customer is again the utmost Agile Goal. If the one person working on the story rotates the new person will have to build knowledge on the on going work from start. This is problem is addressed in Pair Programming because one person stays back to ramp up the newly arriving person on pair.

## Pair Programming and Code Reviews

Code reviews are a very common dev practice where by mostly at the end of a story/feature development, the developer raises a pull request on scm and one or sometimes two other developers review the code submitted. If they are satisfied with the code, they merge the request to mainline. They might also have some comments which they post on the request and the original developer goes back and fixed them. While this flow seems easy, in my experience, it is a heavy drain on the other developer's bandwidth. I have seen it slow down the development.

Lets take a scenario, Mr A works on a story, say, *As a user, I want to be able to login to the system with my credentials*. He takes a day or two on his branch and then raises a pull request. Some reviewer, Mr X, reviews the pull request and asks Mr A to fix the exception being thrown. Mr A fixes this and now Mr X, since he is good with the code, merges the request. Lets see what is going on here. 
* Mr A is the only person who works on the entire story.
* Between the time the request is submitted and Mr X starts the review, there is always sometime where either Mr A is idle. If he picks up something else and there is some comment on earlier work, he has to switch context to work on the story again.
* Either Mr X is just meant to code review or he should be a context switching ninja.
* Makes tracking harder especially if there is queue of reviews.
* Mr A, given that he is developer, will always have defense for his code which takes more time.

Pair programming is a natural alternative to this approach. Since its always a couple of developers working on a story, and since this is done over the course of development of the story, the review is much thorougher and with the rationale, context and logic all accounted for. Further more since pairs are rotated, we have a fresh pair of eyes working on the code and reviewing it, so we essentially incresed the number of reviewers for the story. And tracking is much simpler because when the pair says its done, its done, no review is needed and the pair can move on to something else, of course after forming a different pair.

## Pair Programming and Team Dynamics

## Pair Programming and Product Quality