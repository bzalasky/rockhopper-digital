---
title: The Case for Static Site Generators
author:
description: There's something beautiful about stripping the cruft out publishing content on the web.
date: 2013-02-26 00:46 -08:00
tags:
published: true
---

Creating a website has never been so easy, and it's never been so hard. For the purposes of this post, assume that I'm considering a few different options for creating a site like the one you're looking at right now&mdash;a simple content-focused site with pages and articles.  

## WordPress

[WordPress](http://wordpress.org/) is ubiquitous. As a publishing platform for non-technical users, WordPress is as solid as any solution out there. Over the last 10 years, it's grown from a simple blogging tool into a fully fledged CMS. I don't need to debate its merits. 

That said, maintaining a self-hosted WordPress installation takes vigilance. Security vulnerabilities can creep in if you don't stay on top of updates. Plugins further compound the problem. I'm not saying you can't put out a solid site on WordPress, just that there's more to worry about than you might think (particularly if you're just getting started, or busy worrying about other things).

## Rails and Sinatra

Rails is a solid web application framework, and a great JSON server for single-page JavaScript applications. However, it's a little heavy for the purposes of our simple site. But what about all the great ruby gems and helpers Rails throws our way that would still be nice to have?

  - [Haml](http://haml.info/)
  - [Sass](http://sass-lang.com/)
  - [Asset pipeline](http://guides.rubyonrails.org/asset_pipeline.html)
  - [Application helpers](http://www.padrinorb.com/guides/application-helpers) (including partials)  

I suppose we could use Sinatra, but then we still have to run an application server. There's configuration and deployment, and this needs to be able to handle Hacker News or Reddit, because, even though we don't want to spend a lot of time making it, the content is going to be gold. We need to be prepared. What's the solution?

## Enter Static Site Generators

There are quite a few out there, however, I'm partial to [Middleman](http://middlemanapp.com/), which is what I used to build this site.

Middleman is a command-line tool for building static sites that borrows some helpers from [Padrino](http://www.padrinorb.com/), and gives us access to all those kick-ass shortcuts we thought we'd left behind in Rails or Sinatra.

While they don't work for everything, it's refreshing to know that I don't have to worry as much about whether my server is going to conk out if the site gets slammed. It's all static content once you build the project from the command-line. With directory indexes (on an Apache server), you can make your routes pretty too.

When I began getting into web development, WordPress was a great platform for me to learn on. However, I'm going to make the argument that a beginner today would be better served by figuring out how to use a static site generator.

  - Basic command-line skills
  - Ruby work-flow
  - Modern front-end development tools
  - Learning to [RTFM](http://en.wikipedia.org/wiki/RTFM) 

Discuss this article on Hacker News and Reddit.
