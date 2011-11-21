---
layout: post
title: "My shortcut to open any gem in TextMate with 1 command"
date: 2009-12-09 20:42
comments: true
categories: 
---

Using the <a href="http://blog.peepcode.com/tutorials/2009/shell-method-missing/shell_method_missing.rb">implementation</a> from @peepcode's <a href="http://blog.peepcode.com/tutorials/2009/shell-method-missing">blog on shell method missing</a> as a base.<div>I've added another action (code snippet below) to open a gem library in TextMate by typing in the name of the gem followed by &#8220;.mate&#8221;.</div><div><div><span style="font-size: 12px;">when /^[A-Za-z0-9_&#45;\/]+&#46;mate$/</span></div><div><span style="font-size: 12px;">  # Open the gem in textmate</span></div><div><span style="font-size: 12px;">  # @example</span></div><div><span style="font-size: 12px;">  #   haml.mate</span></div><div><span style="font-size: 12px;">  gem_to_open = command.first.gsub(/&#46;mate$/, &#8221;)</span></div><div><span style="font-size: 12px;">  run &#8220;gem which #{gem_to_open} | tail -1 | xargs dirname | sed -e's/$/&#92;/../' | xargs mate&#8221;</span></div><p></p></div>
