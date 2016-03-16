# PalindromeDetector

# Introduction

A palindrome is a word, phrase, or sentence whose letters are exactly mirrored around the center letter. Some examples include:

racecar
Bob
Kanakanak (a city in Alaska)
Aibohphobia (the fear of palindromes)
never odd or even
I prefer pi
Flee to me, remote elf.
Norma is as selfless as I am, Ron.
No sir! Away! A papaya war is on.

The qualification of a palindrome typically ignores spaces, punctuation, and capitalization, judging only the order of the letters themselves. Essentially, when a palindrome is reversed, its letters fall into the same order.

In this code-along we're going to write a method that can judge whether or not a particular string qualifies as a palindrome. The easiest way to judge a palindrome is simply to compare it to its reverse. However, there is no string reversal method built into the Objective-C language so we'll have to write this functionality ourselves. We'll accomplish this by writing another method called stringByReversingString: that we can call from within the stringIsPalindrome method by using the self keyword as the recipient object.

