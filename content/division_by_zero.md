---
title: "Division by zero"
index: 2
draft: false
---

*"Sir, if no banana was distributed to no student, then will each student get one banana?"* -- a question famously attributed to [Ramanujan](1). Although on the surface it sounds meaningless, it cuts right to heart of mathematics and it's interpretation. Should zero not be treated like other numbers because it does not make sense to have zero of anything in real life? Or should it be the other way round? -- in which case Ramanujan's question should have an answer.

One thing that I want to make clear is that it is not some unsolved problem that people wonder about day in and day out. Mathematics is doing just fine with what explanantions are out there. In my not-very-comprehensive exploration on the web, I read through quite a few explanations for division by zero and most explanations fall into one of the following themes-

1. Define \\(\frac{a}{0}=\infty\\) for all \\(a\in \mathbf{R} \land a\neq0\\) and treat \\(\infty\\) like any other number. For example, a [Riemann sphere](2) or [projectively extended real line](3). Both approached define a finite mathematical structure containing \\(\infty\\) (however counter-intuitive that may sound). Even though both these approaches define division of non-zero entities by zero, \\(\frac{0}{0}\\) and \\(\frac{\infty}{\infty}\\) are kept undefined.

2. Keep \\(\frac{a}{0}\\) undefined for all \\(a \in \mathbf{R}\\) -- form a logically sound mathematical structure with this as an axiom.

Now that we have set the context, we will discuss an alternate explanation which offers answers for \\(\frac{a}{0}\\) for all \\(a \in \mathbf{R}\\). Let's go.

<div class="question">
If asked to choose any real number at random, what number would you choose?
</div>

Think about it for a while before reading further. Is the question even meaningful? How can I choose a number at random when a real number can have infinte digits in it's decimal expansion?

<center>
    <img src="/images/random-numbers.jpg" alt="notebook" style="width:100%"/>
</center>

Is it \\(7\\) or \\(\pi\\) or \\(4.669201601\\)? No matter what you choose, your random number choosing process **can't** be as good as it should be. It's almost like being asked to choose a random person on earth and you just picked a billionare. It's statiscally possible, but you'd be very doubtful about the selection process.

When we think of real numbers, we can only physically think of numbers that need a finite amount of information to specify -- also called [computable](4) numbers. But as it turns out, an overwhelming majority of numbers are [uncomputable](5). So it should raise some eyebrows if a random real number is not uncomputable. As most numbers need infinite amount of information to specify precisely, we need to be able to reason about and formally specify such numbers and not just the special ones. 

<div class="question">
How do we specify numbers that need an infinite information to write down? 
</div>

Every real number can be thought about in a format like shown below. Each empty box can contain a digit and there are infinite boxes on either side of the [radix point](6).

$$
\ldots \Box \Box \Box \Box \Box \Box \Box \bullet \Box \Box \Box \Box \Box \Box \Box \ldots
$$

To specify an uncomputable number precisely, you would need to specify each and every digit individually. There is no other way. On the contrary all computable numbers can be specified with a finite set of instruction as shown in examples below-

<center>

| Finite Instructions | Specified computable number |
|:--------------------:|:---------------------------:|
| All digits are zero  | 0 |
|  |  |
| The first digit to right of <br>the radix is 1, all others are 0| 0.1 |

</center>

For uncomputables, you will have to individually specify each and every digit. With every digit, the possible interval of the number or the error in our description gets reduced. Hence every partial descrption of an uncomputable number corresponds to an interval.