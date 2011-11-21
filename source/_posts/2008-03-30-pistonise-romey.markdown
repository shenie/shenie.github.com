---
layout: post
title: "Pistonise romey"
date: 2008-03-30 8:11
comments: true
categories: 
---

<p><a href="http://rubyforge.org/projects/romey">romey</a> nows run on edge rails.</p>

<p>It started with me trying the <a href="http://agilewebdevelopment.com/plugins/scope_out">scope_out plugin</a> as suggested by <a href="http://railscasts.com/">Ryan Bate's awesome railscasts</a>, <a href="http://railscasts.com/episodes/76">episode 76</a>. Then I read about <a href="http://ryandaigle.com/articles/2008/3/24/what-s-new-in-edge-rails-has-finder-functionality">named_scope from Ryan Daigle</a>. named_scope is previously known as the has_finder gem so I decided to give the gem a go. After I started using it I decided to <a href="http://piston.rubyforge.org/">pistonise romey</a> with edge rails to save myself the trouble of migrating from has_finder to named_scope when the next version of rails is released.</p>

<p>I can say that named_scope has been a huge help in paying back a lot of the technical debt in romey, particularly in making models fat and controllers slimmer.</p>

<p>All in all, it was a great experience cleaning up romey and going back to development on edge again. You can read about some of the new features coming soon <a href="http://blog.caboo.se/articles/2008/3/30/exciting-times-in-rails-land">here</a> if you are not already following it via <a href="http://dev.rubyonrails.org/">rails trac</a>.</p>

<p>update: I should do another release of romey soon.</p>
