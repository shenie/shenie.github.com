---
layout: post
title: "Overwrite Inploy app servers' restart command"
date: 2010-07-08 5:57
comments: true
categories: 
---

[Inploy](http://github.com/dcrec1/inploy) is a rails deployment solution. It comes with integration to restart 4 app servers:

* mongrel 
* passenger 
* thin 
* unicorn  

I needed a way to change how Inploy restarts passenger since our passenger's restart file is at a different location. 


I could've changed the command inside Inploy's passenger.rb but I wanted to avoid that as there's good chance that someone in the future won't know to re-apply the change when they upgrade Inploy.  So I needed a way to monkey patch Inploy's passenger module. My first attempt was to create my version of the Passenger module and require the file in rails' environment.rb. That was no good because Inploy's update command does not seem to bootstrap the whole rails environment so my override simply wasn't getting loaded.

I had to find another way in to load my module for the deployment process. It turns out the solution I was looking for is in rake. Since Inploy's update is just a rake task, I could create a passenger.rake in Rails.root/lib/tasks and define my restart_server override inside my custom passenger.rake.  Please let me know if there is a better / proper way to achieve what I needed. Otherwise hope this helps someone else.
