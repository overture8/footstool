footstool
=========

Relax **and** put your feet up!

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
- [JSON gem](http://flori.github.com/json/)

Installation
============

1. Get the plugin.

`script/plugin install git://github.com/overture8/footstool.git`

2. Generating the config file.

`script/generate footstool`

3. Disable ActiveRecord in the `config/environment.rb`.

`config.frameworks -= [ :active_record ]`

4. Make any changes to the `config/footstool.yml` file.  It is recommended that you add a database prefix.

<pre>
development:
  host: localhost
  port: 5984
  db_prefix: myapp_
  db_suffix: _dev
          
test:
  host: localhost
  port: 5984
  db_prefix: myapp_
  db_suffix: _test
                  
production:
  host: localhost
  port: 5984
  db_prefix: myapp_
  db_suffix: _production
</pre>

Usage in Rails
==============

**Model** classes should inherit `Document`.

<pre>
class Post < Document
end
</pre>

**Controllers** can then make use of `Post` and then functionality inherited from `Document`.

<pre>
class PostsController < ApplicationController
  def new
    @post = Post.new("current_database_name")
  end

  def create
    @post = Post.new("current_database_name")
    @post.save(params[:post])
    redirect_to post_url(@post)
  end

  def show
    @post = Post.find("current_database_name", params[:id])
  end
end
</pre>

**Views** are pretty standard.  For `new.html.erb`...

<pre>
<h1>New Post</h1>
<% form_for @post do |f| %>                                                                                                                                                                                    
  <%= couchdb_rev_field f, @post %>

  <%= f.label :name %>
  <%= f.text_field :name %>    
        
  <%= f.submit "Save" %>
<% end %>
</pre>

For `show.html.erb`...

<h1>Show</h1>                                                                                                                                                                                                  
<p><%= @post.name %></p> 

Copyright (c) 2009 Phil McClure (overture8), released under the MIT license

