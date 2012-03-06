---
layout: post
title: "The ClearCase Effect"
date: 2012-03-06 20:00
comments: true
categories: 
---

A while ago I had the pleasure of experiencing working with ClearCase, NOT!

I made a few notes on how it affected me and as far as I could tell, the team.

Not updating your own codebase often because

  * update is damn slow
  * risk of codebase not compiling after update as checked out/hijacked files are not updated

Lots of CruiseControl failures were due to

  * accidental checkin files before they are complete when refactoring or creating new files
  * newly created files not checked in

CruiseControl failures de-sensitised the team

  * people stop caring/responding to build failures making CI less useful
  * reduced team moral

The above issues are avoidable but:

  * it is not suppose to be this hard
  * workflow using ClearCase is not efficient and optimised for developers
  * what are the benefits with keep using ClearCase that prevented the team from moving away from it?

Also some general issues with ClearCase

  * it is not a tool that many people know and know it well to use it efficiently
  * it is not a tool to attract/retain staff
  * developers were just not happy using it

