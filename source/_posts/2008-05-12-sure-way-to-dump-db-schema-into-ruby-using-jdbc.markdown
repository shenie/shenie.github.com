---
layout: post
title: "Sure way to dump DB schema into ruby using jdbc :)"
date: 2008-05-12 18:01
comments: true
categories: 
---

<p>You need:</p>

<ul><li>jruby</li>
<li>rails (or just active record) gem</li>
<li>activerecord-jdbc-adapter</li>
</ul><p>If you are using the base jdbc adapter then you need to put jdbc jar in jruby's classpath. I just copied the jar into $JRUBY_HOME/lib</p>

<p>Then</p>

<ol><li><p>establish AR connection</p></li>
<li><p>use schema dumper</p></li>
</ol><p>e.g.</p>

<pre>
require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter  =&gt; "jdbc",
  :driver =&gt; 'com.ibm.as400.access.AS400JDBCDriver',
  :url =&gt; 'jdbc:as400://hostname',
  :username =&gt; "blah",
  :password =&gt; "secret"
)
ActiveRecord::SchemaDumper.dump
</pre>
