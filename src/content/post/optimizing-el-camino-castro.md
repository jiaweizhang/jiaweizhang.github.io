---
title: "Optimizing the El Camino Real x Castro St Intersection"
publishDate: "2024-09-25T00:00"
description: ""
tags: ["traffic", "maps"]
---

## Introduction

The El Camino Real thoroughfare is one of the lowest throughput six-lane roadways in the South Bay. There exist numerous optimizations to substantially increase throughput with few tradeoffs. This document proposes signaling optimizations that can be made to the El Camino Real x Castro St intersection. Adjacent safety optimizations are also briefly discussed.

## Current Intersection Behavior

![Intersection View](/images/intersection_image.png)

Figure 1 \- Satellite View (N at top)

### Lane behavior

El Camino Real extends from roughly WNW to ESE. Castro St extends from roughly NNE to SSW. 

This doc will refer to ESE-bound El Camino Real as East-bound and WNW-bound El Camino Real as West-bound. NNE-bound Castro as North-bound and SSW-bound Castro as South-bound.

East-bound El Camino before the intersection has four lanes, three forward lanes and one left turn lane. Note that there is no dedicated right-turn lane, contrary to appearance, as the \~8-10ft portion of the roadway closest to the curb is reserved for parking. These lanes will be referred to as follows:

* El-Camino-E-1 \- South-most forward lane  
* El-Camino-E-2 \- Middle forward lane  
* El-Camino-E-3 \- North forward lane  
* El-Camino-E-4 \- Left turn lane

East-bound El Camino after the intersection has three lanes. There is a bus stop at the extreme bottom right corner of Figure 1\. These lanes will be referred to as follows:

* El-Camino-E-1X \- South-most lane (follows El-Camino-E-1)  
* El-Camino-E-2X \- Middle lane (follows El-Camino-E-2)  
* El-Camino-E-3X \- North-most lane (follows El-Camino-E-2)

West-bound El Camino before the intersection has four lanes, three forward lanes and one left turn lane. Similar to the East-bound El Camino, there is no right turn lane, which is dedicated to parking, though contrary to East-bound El Camino, there are rarely cars parked here as there are no businesses nearby. The \~8-10ft portion of the roadway closest to the curb effectively serves as a right turn lane the majority of the time. These lanes will be referred to as follows:

* El-Camino-W-1 \- North-most forward lane  
* El-Camino-W-2 \- Middle forward lane  
* El-Camino-W-3 \- South forward lane  
* El-Camino-W-4 \- Left turn lane

West-bound El Camino after the intersection has three lanes. These lanes will be referred to as follows:

* El-Camino-W-1X \- North-most lane (follows El-Camino-W-1)  
* El-Camino-W-2X \- Middle lane (follows El-Camino-W-2)  
* El-Camino-W-3X \- South-most lane (follows El-Camino-W-3)

South-bound Castro St before the intersection has three lanes, one right/forward, one left/forward, and one dedicated left. These lanes will be referred to as follows:

* Castro-S-1 \- Right/forward lane  
* Castro-S-2 \- Left/forward lane  
* Castro-S-3 \- Dedicated left turn lane

South-bound Castro St after the intersection has two lanes. The left (East) lane immediately merges into the right (West) lane. There is a right turn into an apartment/retail parking lot at the extreme bottom left corner of Figure 1\. These lanes will be referred to as follows:

* Castro-S-1X \- Right/West lane (follows Castro-S-1)  
* Castro-S-2X \- Left/East lane (follows Castro-S-2)

North-bound Castro St before the intersection has two lanes, one left/forward and one dedicated right. These lanes will be referred to as follows:

* Castro-N-1 \- Dedicated right turn lane  
* Castro-N-2 \- Left/forward lane

North-bound Castro St after the intersection has one lane. This lane will be referred to as follows:

* Castro-N-2X \- Only lane (follows Castro-N-2)

### Bike lane behavior

El Camino Real has no East-bound or West-bound bike lanes around Castro St. The \~8-10ft parking along the right edge of the street going both directions means there is no way to ride safely except to fully dominate either the El-Camino-E1 or El-Camino-W-1 lanes. This also comes with risks due to the large number of entrances/exits on El Camino Real. 

South-bound Castro St before the intersection has no bike lane. Bikes must utilize the right-most lane Castro-S-1. Substantial downtown traffic heading toward West Los Altos or Palo Alto presents risks. 

South-bound Castro St after the intersection does have a dedicated, separated bike lane.The rapid merge from the left lane (Castro-S-2X) to right lane (Castro-S-1X) along with the immediate entrance/exit of the Arlo/Elan apartment complex present risks. 

North-bound Castro St before the intersection has a dedicated but not separated bike lane. 

North-bound Castro St after the intersection does not have a bike lane. This means bikes coming into North-bound Castro St must share Castro-N-2X with cars. There does not appear to be a shoulder. This presents risks, especially for bikes coming from North-bound Castro St.

### Signaling behavior

Disclaimer: The signal timings are not precisely timed, but suffice in illustrating non-optimized signaling.

The intersection has the following lights:

* El-Camino-E-F \- East-bound forward light  
* El-Camino-E-L \- East-bound left turn light  
* El-Camino-W-F \- West-bound forward light  
* El-Camino-W-L \- West-bound left turn light  
* Castro-S-FL \- South-bound forward/left light  
  * Note that this light appears as a forward light, but acts as a forward/left light, meaning Castro-N-FL is always red when this light is green  
* Castro-N-FL \- North-bound forward/left light  
  * Note that this light appears as a forward light, but acts as a forward/left light, meaning Castro-S-FL is always red when this light is green

The intersection has the following pedestrian signaling:

* El-Camino-W \- crossing El Camino West of the intersection  
* El-Camino-E \- crossing El Camino East of the intersection  
* Castro-N \- crossing Castro North of the intersection  
* Castro-S \- crossing Castro South of the intersection

During most day-time hours, the signaling pattern remains unchanged, except when pedestrians push the El-Camino-W or El-Camino-E crossing signals, which triggers the pedestrian signal to light up on the next Castro-S-FL or Castro-N-FL green light in the pattern. 

* If El-Camino-W is pressed and El-Camino-E is not pressed, El-Camino-W and Castro-S-FL turn green after El Camino lights turn red.  
* If El-Camino-E is pressed and El-Camino-W is not pressed, El-Camino-E and Castro-N-FL turn green after El Camino lights turn red.   
* If El-Camino-W and El-Camino-E are both pressed, El-Camino-W and Castro-S-FL turn green after El Camino lights turn red, followed by El-Camino-E and Castro-N-FL turning green. 

The Castro-N and Castro-S crossing signal presses are almost entirely inconsequential to other signals’ behavior, other than actually causing the pedestrian signal to light up for approximately 35 seconds and resulting in a 4 second LPI (8 seconds per rotation). 

The following table illustrates the current intersection signaling sequence.

| Seconds | El-Camino-W-F | El-Camino-W-L | El-Camino-E-F | El-Camino-E-L | Castro-N-FL | Castro-S-FL | El-Camino-W | El-Camino-E |
| ----- | :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| **0** | G \- 80 | G \- 10 | R | R | R | R | R | R |
| **10** |  | Y |  |  |  |  |  |  |
| **14** |  | R \- 171 |  |  |  |  |  |  |
| **16** |  |  | G \- 86 |  |  |  |  |  |
| **80** | Y |  |  |  |  |  |  |  |
| **84** | R \- 101 |  |  |  |  |  |  |  |
| **86** |  |  |  | G \- 16 |  |  |  |  |
| **102** |  |  | Y | Y |  |  |  |  |
| **106** |  |  | R \- 95 | R \- 165 |  |  |  |  |
| **108** |  |  |  |  |  |  | G \- 33 |  |
| **112** |  |  |  |  |  | G \- 25 |  |  |
| **137** |  |  |  |  |  | Y |  |  |
| **141** |  |  |  |  |  | R | R |  |
| **143** |  |  |  |  |  |  |  | G \- 40 |
| **147** |  |  |  |  | G \- 32 |  |  |  |
| **179** |  |  |  |  | Y |  |  |  |
| **183** |  |  |  |  | R |  |  | R |
| **185** | G | G |  |  |  |  |  |  |

Figure 2 \- Signaling pattern when both El-Camino-W and El-Camino-E pedestrian signals are pressed

## Suggested Optimizations

### Signaling optimizations

* The 10 second El-Camino-W-L and 16 second El-Camino-E-L green lights can be partially or fully absorbed into the El-Camino-W and El-Camino-E pedestrian lights, respectively. This would involve shortening the duration of the Castro-S-FL and Castro-N-FL green lights, respectively.   
  * For example, the current 25 second Castro-S-FL green light can be cut to 15 seconds with little consequence due to limited traffic coming from downtown.   
  * The 32 second Castro-S-FL green light can be cut to 15 seconds with even lower consequence due to very little traffic coming from Miramonte, as most cars go onto Shoreline.   
  * These changes would involve flipping either Castro-N-FL and Castro-S-FL or El-Camino-E-L and El-Camino-W-L in the sequence. This is necessary as El-Camino-W must overlap with both Castro-S-FL and El-Camino-W-L consecutively. And El-Camino-E must overlap with both Castro-N-FL and El-Camino-E-L consecutively.   
  * These changes also allow saving 4 seconds in LPI per rotation (only in one direction).  
* The 80/86 second El Camino Forward-lane green signal is unnecessarily long in clearing El Camino traffic. Given that West-bound traffic in the morning and East-bound traffic in the evening are both generally backed up by more than one rotation at Shoreline and Phyllis, respectively, any throughput gains from continuous flow are forfeit. A 60/66 second green signal should suffice.  
* The 40 second El-Camino-E pedestrian green can be shortened. It is likely longer than the 33 second El-Camino-W pedestrian green as the Southeast curb is pushed back due to the dedicated Castro-N-1 right-turn lane, but it is not \~21% longer (40/33-1). The green can be shortened to approximately 37 seconds (3 seconds in savings) with no tradeoffs. 

The following table illustrates the optimized signal sequence, assuming both pedestrian signals are pressed.

| Seconds | El-Camino-W-F | El-Camino-W-L | El-Camino-E-F | El-Camino-E-L | Castro-N-FL | Castro-S-FL | El-Camino-W | El-Camino-E |
| ----- | :---- | :---- | :---- | :---- | :---- | :---- | :---- | :---- |
| **0** | R | G \- 10 | R | R | R | R | R | R |
| **2** |  |  |  |  |  |  | G \- 33 |  |
| **10** |  | Y |  |  |  |  |  |  |
| **14** |  | R |  |  |  |  |  |  |
| **16** |  |  |  |  |  | G \- 15 |  |  |
| **31** |  |  |  |  |  | Y |  |  |
| **35** |  |  |  |  |  | R | R |  |
| **37** |  |  |  |  |  |  |  | G \- 37 |
| **41** |  |  |  |  | G \- 15 |  |  |  |
| **56** |  |  |  |  | Y |  |  |  |
| **60** |  |  |  |  | R |  |  |  |
| **62** |  |  |  | G \- 16 |  |  |  |  |
| **74** |  |  |  |  |  |  |  | R |
| **76** |  |  | G \- 68 |  |  |  |  |  |
| **78** |  |  |  | Y |  |  |  |  |
| **82** |  |  |  | R |  |  |  |  |
| **84** | G \- 60 |  |  |  |  |  |  |  |
| **144** | Y |  | Y |  |  |  |  |  |
| **148** | R |  | R |  |  |  |  |  |
| **150** |  | G |  |  |  |  |  |  |

Figure 3 \- Optimized signaling pattern when both El-Camino-W and El-Camino-E pedestrian signals are pressed

##### Net changes

|  | Unoptimized Green Duration | Optimized Green Duration |
| :---- | ----- | ----- |
| **El-Camino-W-F** | 80s | 60s |
| **El-Camino-W-L** | 10s | 10s |
| **El-Camino-E-F** | 86s | 68s |
| **El-Camino-E-L** | 16s | 16s |
| **Castro-N-FL** | 32s | 15s |
| **Castro-S-FL** | 25s | 15s |
| **El-Camino-W (ped-xing)** | 33s | 33s |
| **El-Camino-E (ped-xing)** | 40s | 37s |
| **Full rotation** | 185s | 150s |

Figure 4 \- Net green light duration changes

The most consequential optimization is the reduction in full rotation length from 185s to 150s (-19% reduction).

### Structural and safety optimizations

* Right turn on Castro-N-1 has very poor visibility of El-Camino-E-1 and El-Camino-E-2 when cars are parked along El-Camino-E-1. Suggest marking the 50ft of Southwest corner of El Camino as no-parking, despite being in front of retail. Many work vans park here today, exacerbating the situation.  
  * There is free parking in the Arlo/Elan underground lot available for retail. This lot is rarely more than half occupied.  
* Redesign Castro St North of the intersection to include bike lanes both Northbound and Southbound. This involves:  
  * Removal of Castro-S-2. This lane is unnecessary as front-going traffic is limited in volume and can use Castro-S-1 while left-going traffic is adequately handled by Castro-S-3. Furthermore, South-bound Castro going back one block is a one lane road anyways.  
  * Shift Castro-S-1 and Castro-S-3 to meet in the middle of the former Castro-S-2.   
  * This opens up approximately 6ft to the right of Castro-S-1 to serve as a dedicated bike lane.   
  * Insert bollards between bike lane and right/forward lane Castro-S-1, akin to wide angle turn bollards on Stevens Creek Blvd.   
  * Shift Castro-N-2X over \~6ft such that the left edge is in the middle of former Castro-S-3.   
  * This opens up approximately 6ft to the right of Castro-N-2X to serve as a dedicated bike lane.  
  * Insert bollards between the bike lane and Castro-N-2X.   
* Formally convert the Castro-N-FL and Castro-S-FL signals into true forward and left protected signals. I imagine there is a procedure to do this conversion at low cost with vinyl cutouts applied to the signals.   
* Codify that the Castro-N-FL and Castro-S-FL signals may never be converted into Castro-N-F and Castro-S-F. Frequent users of this intersection treat these signals as FL signals, and changing this behavior will result in head-on collisions between South-bound and North-bound Castro (one or both lanes trying to left turn).   
  * This risk can be mitigated by creating separate forward and left signals should the conversion occur. 

## Other points of interest

* El Camino East and West-bound both have posted speed limits of 35mph, which require by law a minimum yellow light interval of 3.6 seconds.   
* Due to the size of the intersection, the all-red interval is approximately 2-2.5 seconds.   
* Pedestrian lights have about a 4 second Leading Pedestrian Interval (LPI). This refers to the time between when a pedestrian light turns green and the adjacent vehicle light turns green.  
* It’s a fallacy that more % of time on green light increases throughput. El Camino Real being bidirectional with high traffic signal density means that multi-signal continuous greens are incredibly rare. Most drivers will have to wait at most intersections. A shorter rotation is what results in more throughput.   
* It’s possible that a left turn with pedestrians crossing on the opposite side of the intersection presents risks, the main risk being that forward-heading vehicles accelerate seeing the dedicated left turn signal. It’s possible that there exists signaling regulations that disallow this behavior, in which case optimization \#1 will not be possible.

