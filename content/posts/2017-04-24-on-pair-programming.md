---

kind: article
title: "On Pair Programming"
created_at: 2017-04-24 17:30:00 +530
draft: true
tags: 
  - Agile Software Development
  - Pair Programming
videos:
  - Google I/O 2009 The Myth of the Genius Programmer
  - https://www.youtube.com/watch?v=0SARbwvhupQ

---

# On Pair Programming

A couple of days back I was talking to a colleague of mine who comes from an Agile Development background. While discussing something (I don't remember what) I mentioned about Pair Programming and how I felt that it could solve most of the issues we see on the team. Like almost everyone, his immediate reaction was, "Pair Programming !!! That does not work in the real world. We tried that once in my last job and we gave up. You 've got to ve very luck with the team mix to get that to work." His comment on "*team mix*" got me thinking about it. I have been religiously following Pair Programming right from the very beginning of my career, almost 5 years now. I do not remember any issues that I faced bacause of the team mix. This is where I decided to pen down my thoughts on this.

According to Wikipedia
> Pair Programming is an agile software development technique in which two programmers work together at one workstation. One, the driver, writes code while the other, the observer or navigator, reviews each line of code as it is typed in. The two programmers switch roles frequently.

This brings out the fundamental point of pair programming or pairing that there are always two people working at one workstation. People almost bounce off their chairs on the very thought of having two people work together with all sorts of hypotheses about all the issues that might result in such a setup.

1. A setup of two programmers working together would only work when people are of similar experience levels. What will two freshers pairing together do ?
2. Its a huge hit on productivity in case there is a pair of a more experienced and productive developer and a college grad.
3. Half the workforce would mean half work. What about the delivery timelines ? I might try this only on a project where there is no delivery pressure.
4. How would code reviews work now ? Are those too done as pairs ?

This is not just manager or clients, I have experienced similar responses by seasoned Software Engineers and Architects as well. This is when I know that most of them are stuck at the tip of the ice berg; two programmer working together at one workstation. There is a lot more to Pair Programming than just that.

Pair Programming is a cultural shift in the way programmers collaborate on a given task within the team. The most common way is by code reviews where by one programmer works on a task and raises a pull request for other programmers, peers or leads, to review the work and provide comments. This way atleast one person other than the programmer knows about the work and can provide alternative perspective to the original developer. In pair programming, at any time two people collaborate on the task. They discuss, critique and work on the task together. This shortens the feedback loop significantly compared to the feedback, received during a code review quite late in the cycle. 

Practicing pair programming, I should however admit, is not that simple. Pair programming works only in teams with good understanding and dynamics. Empathy and humility are almost a prerequisite for implementing pair programming. In fact I must add, these two are pre requisites for even calling youself a team. The fact that they can only be acquired and not imposed makes them difficult to achieve. There is nothing more deteremental to the team than an arrogant, self obsessed and egoistic programmer. Generally, there is little substance to such people anyway. People who really know their shit are generally mellow and humble. In the Google I/O 2009 talk **The Myth of the Genius Programmer**, Brian Fitzpatrick and Ben Collins-Sussman go at length to talk about collaboration in software development effort. Important message throughout the talk was to **drop your ego**.  When asked about their views on Pair Programming at 43:06 in the same video, they state is that for pair programming to work, the people better be tolerant of each other and know each other well. 

For pair programming to work, everyone on the team has to be receptive to critique and ready to explain. The idea of two people collaborating on task is to enable constant review and feedback to the driver from observer. Both discuss every step at length and then proceed to codify their discussed approach. 

There are a few ground rule that must be followed for pair programming:

1. All the work is done in pairs. In case it is required to split a pair, a new pair is formed with some other member from team to continue the work. This also means that you do not work when your pair is not around. The basic idea with pairing is to enable constant review of code that goes into the system. Working when pair is not around, diffuses the entire stand of placing pair programming as an alternative to code reviews. 
2. Everyone on the team has to pair with everyone else. The very notion of a favourite partner / most productive pair is an indicator of poor team dynamics and trust. Ensuring that everyone pairs with everyone accelerates understanding and empathy among team members. It ultimately leads to what is called a **Cohesive team**, a team that stands by one another always.
3. Once in a pair, everyone is a developer. There is no room for categorization like lead, architect or grad. Sure, the knowledge levels will be different anyway but keeping therank same encourages healthy discussions. The grad on the team will learn much faster from the tech lead he is pairing with and this will further be an incentive for him to come prepared and do his homework. The lead, because she is equal on ranks has to explain her thought process clearly which in my view is the best form of learning. Something no text book can teach; experience. This enables them to learn from one another; the lead gains humilty and fresh perspective and the grad gains confidence and learns from experience of lead.
4. Both in the pair write code. Both in the pair review code. The roles, driver and navigator are ephemeral and pair switches roles multiple times during an hour let alone a day. This practice accelerates learning, confidence, understanding and keeps everyone well grounded. 
