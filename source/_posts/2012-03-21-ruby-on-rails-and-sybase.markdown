---
layout: post
title: "Ruby on Rails &amp; Sybase"
date: 2012-03-21 22:05
comments: true
categories: 
---

This was my notes many years ago of getting Ruby on Rails to run on Sybase.
It is no doubt out-of-date by now. But still an interesting read for me, kind of like reading an old diary.

----

I have been trying to learn how to get Rails to work with Sybase for a while because Sybase is predominantly the database at my work.

Since I am not exactly free nor allowed to spend chunks of my time working on this stuff at work I haven't had much success. For some reason, there isn't as much resource on getting Rails to work with Sybase compared to MySQL or PosgreSQL. 

So every now and then I'd research a bit to see if anything new in the field comes up that might help. On one such research I found http://wiki.rubyonrails.com/rails/pages/HowToSetupSybaseAdapterOnRails on Sybase Rails wiki http://wiki.rubyonrails.com/rails/pages/Sybase. It is the instructions for Suse 7.3, and during my research I learn that I can install [Sybase on OS X](http://www.sybase.com/partner/mac) so I thought it was worth to give the instructions a try.

Overall the process wasn't too bad, I skipped step 4 & 5 (but later I had to setup SYBASE environment, something complained about it). Also was quite lucky the extconfig.rb (step 7) in [Ruby Sybase Library](http://raa.ruby-lang.org/project/sybase-ctlib/) already contains a commented out section for OS X configuration (it was written for Panther but it worked for me on Tiger). I can't remember for sure if step 7 was when I was faced with the problem of missing libraries but either way I was able to find the missing library name and [got the answer](http://www.omnis.net/technotes/tnsq0009.html) (I picked the Symbolic Links solution).
	
	cd /usr/libsudo 
	ln -s /Applications/Sybase/System/OCS-12_5/lib/libsybtcl.dylib libsybtcl.dylibsudo
	ln -s /Applications/Sybase/System/OCS-12_5/lib/libsybdb.dylib libsybdb.dylibsudo 
	ln -s /Applications/Sybase/System/OCS-12_5/lib/libsybintl.dylib libsybintl.dylibsudo 
	ln -s /Applications/Sybase/System/OCS-12_5/lib/libsybct.dylib libsybct.dylibsudo 
	ln -s /Applications/Sybase/System/OCS-12_5/lib/libsybcs.dylib libsybcs.dylibsudo 
	ln -s /Applications/Sybase/System/OCS-12_5/lib/libsybcomn.dylib libsybcomn.dylib

After step 7 (create Makefile & compile by running make) I tested Ruby Sybase Library in the local folder by running sqlsample.rb against Sybase and it all worked so things were looking promising.

However step 8 expects step 7 to have created 4 files which are to be installed in system directory (any ruby load path). But since it had already passed the test I didn't think too much of it and just copied the only 3 out of 4 files that I could find, created a new project (running on edge rails) configure database.yml to run against sybase adapter then test it using script/console. Unfortunately that wasn't enough. What made it worse was that the error message was really not helpful because it said "database configuration specifies nonexistent sybase adapter", by running console with --trace I found the line that raised the error and the condition that caused the error. I was still confused after I found the line because it was testing if the class has a method called sybase_connection, which I knew for sure existed in sybase_adapter.rb. After a while I finally noticed that sybase_adapter.rb starts a begin block then require 'sybsql' (which is one of the 3 files I installed) and that require statement is throwing an error which is rescued right at the end of the file and the catch block doesn't do anything (no logging of any sort). So after I modified it to printed out the error, I finally found out the real reason why sybase adapter isn't loaded properly. 

The error turned out to be "unable to load sybct.o". The error seems strange because I already tested the library with sqlsample.rb so something that was in the local library directory when running sqlsample.rb is also needed to be installed in system directory. A couple of trial and error the 4th file that is needed turns out to be sybct.bundle. After installing that file I finally got rails to run on Sybase, wahoo!!!

I grew a bit more comfortable about ActiveRecord during this experience, get to install Sybase locally (so I'll get a chance to learn about Sybase admin functions) and get a little bit closer to getting Rails to work with Sybase at work :)