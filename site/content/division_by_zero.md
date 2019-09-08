---
title: "Division by zero"
index: 2
draft: false
---

When you search for the phrase "division by zero" on [Google](https://www.google.com), you get many unique takes on this problem. The general theme of all explanations is "You can't". Some explanations even introduce new different form of number lines in an attempt to get to an answer for division by zero, which I think is pretty cool.

You might even wonder -- is there even a possibility of adding more to to this than what already exists? And you'd be write in your wonder...ment? because it's a problem that even a 4 year old can grapple with and come up a unique spin on it. Nonetheless, I have attempted to offer yet another (hopefully fresh) perspective on this without getting too philosophical about anything.

<div class="question">
If I ask you to choose a random real number, what number would you choose?
</div>

Is it `7` or `pi` or for the more adventorous `1.38726473286784327`? No matter what you choose, your random number choosing process would be quite a remarkable failure. It's almost like being asked to choose a random person on earth and you just picked a billionare at random, if not worse.

You see, when we think of numbers, we only think of special numbers. We never think about normal numbers event though those are the ones that make up most of the numbers. So let's dedicate this post to the normal ones, the ones like me.

A normal number is a number in which it's decimal expansion contains all the length of digits with equal probability. That' another way of saying that there is no discernable pattern in the digits and they are quite random. Hence when I asked you to pick a random number, you should have picked a normal number.

But how do you pick one? It takes infinite amount of information to write even a single normal number. That's right. Just how to uniquely describe me you would need to lay down a whole lot information which does not apply to anyone else on the planet. So let's define rigorously-

- It's not possible to list down a normal number with finite information. 
- This implies with finite information we can only list down a normal number with finite precision.

Hence when I write 1.4 -- it actually means an interval `[1.4, 1.5)` which means that a normal number that lies between 1.4 and 1.5 excluding 1.5. To make this more clear-

<center>

|    |    |
|:---------------|:--------|
|`1.0`|  \\([1.0, 2)\\)|
|`3.14`|  `[3.14, 3.15)`|
|`1.414`|  `[1.414, 1,415)` |

</center>

So we are thinking of numbers as just intervals, because pinning down an exact number needs infinite information.

Now we are ready to look at division by zero

\\(0/0\\) is basically \\((-\infty, +\infty)\\) so it's not technically \\(undefined\\). It's just the largest interval that there is. What is any other positive number divided by zero? It is \\(\phi\\), the null interval. The shortest interval that there is.

$$
c^{2} = a^{2} + b^{2}
$$
