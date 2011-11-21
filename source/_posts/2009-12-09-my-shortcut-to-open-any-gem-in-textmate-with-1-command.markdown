---
layout: post
title: "My shortcut to open any gem in TextMate with 1 command"
date: 2009-12-09 20:42
comments: true
categories: 
---

Using the [implementation](http://blog.peepcode.com/tutorials/2009/shell-method-missing/shell_method_missing.rb) from @peepcode's [blog](http://blog.peepcode.com/tutorials/2009/shell-method-missing) on shell method missing as a base. I have added another action (code snippet below) to open a gem library in TextMate by typing in the name of the gem followed by ".mate".

{% codeblock %}
when /^[A-Za-z0-9_\-\/]+\.mate$/
  # Open the gem in textmate
  # @example
  #   haml.mate
  gem_to_open = command.first.gsub(/\.mate$/, '')
  run "gem which #{gem_to_open} | tail -1 | xargs dirname | sed -e's/$/\\/../' | xargs mate"
{% endcodeblock %}
