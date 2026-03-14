---
title: "Harnessing Map Wizards to Deliver Traffic Optimizations"
publishDate: "2026-03-10T00:00"
description: ""
tags: ["traffic", "maps"]
---

### Background

Maps are a primary passion for me. Many an evening, when I’m tired physically or mentally, I’ll pull up Google Maps or Google Earth and simply browse. Maybe I’ll trace a [creek](https://maps.app.goo.gl/JYUaJ41cu67J1CSs9) from my childhood to see if recent housing developments have changed its meanderings. Maybe I’ll look for [rail yards](https://maps.app.goo.gl/YxYgoBW7BVsj69y49) that possess particularly interesting siding / spur designs. Maybe I’ll go into 3D view and see what silhouettes of certain hills or mountains look like from different perspectives. Maybe I’ll think about an [intersection](https://docs.google.com/document/d/17bEfdBzBw6Lx03Oo4DxEmePelRN1qWjEdDoZgzYo_SU/edit?tab=t.0#heading=h.8s18ls3qz36v) I stopped at during my drive home. And from there, sometimes, the mind wanders…

*OMG, what is wrong with this signal \- the only one that’s green is the protected left with zero waiting cars and every other lane has been waiting for 30 seconds \- they need to recalibrate these signals as soon as they install them \- why is that even expensive anymore since vehicle detection is performed by cameras now \- wait, are those the magnetic detectors they buried in the brand new road? \- I wonder why the hell they designed it using those magnetic detectors \- surely way more expensive than the camera systems \- taxpayer dollars… \- and lives too \- think about how much life is wasted on these damn lights \- I bet with clever optimizations you can save 15-20% of wait time at lights, which let’s assume is 5% overall trip duration \- the average person’s commute would probably be optimized by 3% of so, given use of highways which optimizations wouldn’t affect \- that means 3% of perhaps an average 30 minute commute (60 minutes both ways) for every working individual, for 200 days a year \- so that’s about 2 minutes a day, and about 400 minutes a year \- that’s about 6 hours per person \- and there are what, like 200k-ish people in Mountain View and Sunnyvale alone \- maybe 150k who commute, so that’s a million hours a year? \- how many years is that in life? \- that’s like 40k days at \~24 hours per day \- divided by another 365 \- it’s a little over 100, maybe like 110 years \- 110 years holy shit \- that cannot be right \- how many dollars is that from a “we’re gonna invest n dollars in traffic infrastructure to save on average 1 life” perspective \- that’s kinda complex \- too complex to do in my head \- you’d need average expected remaining lifespan and then you’d need to amortize the investment to fix over the next n years \- this kind of passes the smell test for something that should be invested in \- we could probably invest O($10M) or so to reduce commute times by 1% \- progress over perfection \- let me think about this some more later.*

And to think that there are at least [thousands](https://matt-op.github.io/geoleaderboard/) of people who have these thoughts running in their heads, for hours in a day. The allure of discovering, matching to existing patterns, and optimizing the methodologies to do so, of various map features is incredibly compelling to this group of people. And yet, few of these people are in a position to valuably contribute their expertise to the improvement of public infrastructure. **Can we create a system that can harness incremental ingenuity from these individuals to effectively deliver improvements to public infrastructure?**

### So how do we solve this?

To answer this question, we can reframe the question as a classic “two-way transform” problem, with three parties:

1. The map wizards 🧙- the aforementioned cohort  
2. The solutioneers \- the system builders  
3. Public infrastructure \- municipalities and public works

Each of these three parties must get something from at least one of the other parties, and it must satisfy their desire.

#### Desires

The map wizards are the easiest to understand, as I am one. What scratches the itch? 

* Route completion \- connecting start and end point  
  * Discovery of elegant paths  
  * Fast route completion  
* Pattern matching map features \- including recall  
  * Discovery of ornate (?) patterns made by paths or geo features (e.g., Portland grid, 160 acre grids in Western US)  
  * Symmetrical and ornate interchanges (e.g., interstate 85x385)  
  * Bridge / tunnel ramps  
  * Fast feature discovery / matching (think GeoGuessr NMPZ)  
* Traffic reduction \- and the broader category of flow optimization  
  * Stoplight optimization  
  * Bike signaling  
* Bike infra  
  * Bike lane continuity (e.g., bridges / underpasses)  
  * Elegant handling of left turns

Public infrastructure desires are also fairly easily understood. Ever-limited by funding and staffing, it’s all about getting whatever is needed cheaply, with limited risk, and delivered in a form ready for consumption by downstream parties. 

For the solutioneers, perhaps we can start with just knowing that we’ve played our role in creating (a) better public infrastructure, (b) an outlet for map wizards, and (c) improved societal efficiency. We’ll figure out the financial aspects of this transform problem later.

#### Fulfilling these desires

How do we sate the map wizards’ desires? By building a pleasant-to-use ecosystem that allows map wizards to leverage their strength / speciality in a way only they know how. Perhaps even go as far as “games” ala Ender’s Game style[^1]. Such an ecosystem can only be delivered by the solutioneers, but is highly contingent on the solutioneers having an omniscient understanding of the workings of public infrastructure and how to apply the data that may be available through public infrastructure (and other sources \- e.g., both open source and paid sources like Google Maps) in delivering highly compelling experiences. More on this later.

The other two parties’ desires are frankly less interesting, so I’ll skip elaborating on how to fulfill them and let you use your imagination. 

### But what does this really mean?

#### Starting small \- solving point problems

There are entire classes of public infrastructure problems that can effectively be crowdsourced. Think pothole identification, highway guardrail mis-installation identification, single-intersection signaling optimization. 

You may look at some of these and think “but these can be solved by cheap data annotators" or “this is already solved with computer vision and existing LLM technology” \- but you’re missing the point. These point problems serve as the entry-point for skill-building for the map wizards. One cannot be expected to start their journey at designing city-wide infrastructure projects, after all. 

The simplest level 1 game could look something like “given an intersection and a known set of inbound cars (lane, timing, speed, destination lane), design a signaling pattern using WYSIWYG editors”. 

Level 2 could take this to the meta level and present real intersections and real historical traffic, and introduce policy constraints (e.g., California’s AB 2264 “Leading Pedestrian Interval”). 

Level 3 could take this to the meta^2 level and ask for algorithmic solutions that solve the problem for general cases.

The possibilities are endless.

#### Dealing with complexity \- graduating to larger scale

Complexity can also increase along other dimensions \- the same signaling optimization problem can be scaled to an entire sequence of lights, an entire municipality, to include other signals (e.g., train x-ing, bridge, toll, traffic flow). There are other problems of similar complexity, such as metro line optimization (e.g., why does the NYC B metro always seem to wait for Q?). Much like how we could use [Logisim](https://www.cburch.com/logisim/) in our early computer architecture education to abstract away modular components, we can take the same approach here. 

At this stage, the ecosystem must be able to present data (owned by solutioneer/public-infra and re-formulated by solutioneer) and create opportunities by map wizards to leverage this data in solving *novel* problems that aren’t even known today to be problems. I believe that data is the greatest moat, so solutioneers will need to take care in re-formulating such that the moat is not breached. 

And let’s not forget perhaps the greatest innovation humanity has ever seen \- AI. The applications of AI in solving this transform problem are innumerable. Aside from ecosystem development (and acceleration), AI will be able to identify entire classes of problems using available data, thereby increasing the completeness of map wizard capture paths by satisfying more specialities. There will also be opportunities to expose map wizards to AI toolkits to deliver solutions at a higher quality, pace, and with more creativity \- developing AI competencies in doing what you love doing will perhaps be seen as the greatest unsought desire fulfilled. 

#### Landings

To get all this to really stick, the inputs from the map wizards must be transformed into something consumable by public infrastructure. Admittedly, this is an area I have limited experience in, aside from a few public hearings about infrastructure projects. I imagine this process will be mired in bureaucratic morass. That being said, I believe we all have a moral obligation to perform our civic duty, which, in this case, means wading through the morass and hopefully forging optimized paths for the future. 

### What success looks like

* Growing a whole generation of expert builders  
* Improved public infrastructure (societal health outcomes)  
* Proven successful interaction models between humans and AI in driving societal impact  
* Education made cool again  
* Somebody probably makes money from something somewhere in this thing

### FAQ

Q: But aren’t these map wizards just data annotators?  
A: No. The key is not to have them solve known problems, but for them to ideate new problem spaces and holistically tackle unified solution spaces.

Q: But aren’t these map wizards just unpaid contractors?  
A: Last time I checked, I paid money for games I play. But, jokes aside, this ecosystem does need to ensure desires and desire fulfillment remains aligned throughout its lifecycle. 

[^1]:  For those who may not be familiar with the book, this means playing “games” where the actions taken by the player are actually applied in the real world. Of course, this would only be done with the appropriate guardrails. 