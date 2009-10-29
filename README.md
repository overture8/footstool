footstool
=========

(NOTE: this plugin is still in development)

footstool is a thin, lightweight wrapper for the couchrest library, allowing easy implementation of couchdb in the context of a Rails application.  footstool makes use of the couchrest gem and builds upon the work of the basic_model plugin.

Features/aims of footstool are:-

- Providing a simple, lightweight way to get started with couchdb in a Rails project
- NOT trying to mimic ActiveRecord
- Easily create databases dynamically

Requirements
============

- [couchrest gem](http://github.com/hpoydar/couchrest-rails)
- [rest-client gem](http://code.google.com/p/rest-client/)

Installation
============

     script/plugin install git://github.com/overture8/footstool.git

Generating the config file

     script/generate footstool
     



Copyright (c) 2009 Phil McClure, released under the MIT license
