---
layout: post
title: "WARNING: Nokogiri was built against LibXML version 2.7.3"
date: 2012-07-26 22:04
comments: true
categories: 
---

Upgraded to Mountain Lion and started getting the above warning when using nokogiri.

It is happening because OSX has a default libxml2 in /usr/lib/libxml2.2.dylib

But the libxml2 headers used during nokogiri compilation are the ones in /usr/include/libxml2.
nb.I don't use macport or homebrew.

So /usr/include/libxml2 is version 2.7.3 which you can see by looking inside libxml/xmlversion.h

To get rid of the warning in nokogiri I needed to get matching headers for libxml2 2.7.8, so I downloaded ftp://xmlsoft.org/libxml2/libxml2-2.7.8.tar.gz
Extracted it somewhere in my home folder (where I kept all the source files), sudo mv /usr/include/libxml2 /usr/include/libxml2-2.7.3 then symlink my extracted libxml2-2.7.8/include to /usr/include/libxml2
