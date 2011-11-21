---
layout: post
title: "How to revert back to os x ruby framework"
date: 2008-06-05 9:10
comments: true
categories: 
---

<p>As I mentioned before, I upgraded to ruby 1.8.7 and decided to use &#8212;prefix=/usr, i.e. overwriting existing ruby 1.8.6. Big mistake. After some issues I decided to roll back completely.</p>

<p>This is what I did (luckily I can copy the required files from my wife's Macbook).</p>

<h3>OS X ruby framework overview</h3>

<p>The framework is /System/Library/Frameworks/Ruby.framework</p>

<ul><li>/usr/lib/ruby is a softlink to osx ruby framework</li>
<li>osx ruby framework's site_ruby is a softlinke to /Library/Ruby/Site</li>
</ul><h3>To fix</h3>

<ul><li>/usr/bin</li>
<li>osx ruby framework</li>
<li>/Library/Ruby/Site</li>
</ul><h3>Actions</h3>

<p>Rename the following directories then copy the same directories from another OS X</p>

<ul><li>/System/Library/Frameworks/Ruby.framework</li>
<li>/Library/Ruby/Site</li>
</ul><p>Make sure the following files are links to os x ruby framework's /usr/bin</p>

<ul><li>/usr/bin/erb</li>
<li>/usr/bin/irb</li>
<li>/usr/bin/rdoc</li>
<li>/usr/bin/ri</li>
<li>/usr/bin/ruby</li>
<li>/usr/bin/testrb</li>
</ul><h3>Cleanup</h3>

<p>Remove these backup directories afterwards (once everything is ok)</p>

<ul><li>os x ruby framework .bak</li>
<li>/Library/Ruby/Site.bak</li>
<li>/usr/lib/ruby/site_ruby.bak</li>
<li>/usr/lib/ruby/user-gems.bak</li>
</ul><p>Now</p>

<ul><li>link /usr/lib/ruby/site_ruby to /Library/Ruby/Site</li>
<li>link /usr/lib/ruby/user-gems to /Library/Ruby/Gems</li>
</ul>
