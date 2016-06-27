# What is this?

Only read the stories that have been voted up to number one on [Hacker News](https://news.ycombinator.com) and keep an eye on the stories that have spent the most time at number one.

## Recent Top Hits

These are the stories that have recently been at the number one. The time shown is when the story first reached number one.

## Time Spent at #1

See which stories meant the most to the hacker news community by looking at stories that spent the most time at number one.

## /best

Hacker News tracks the "best" stories. Check it out at [https://news.ycombinator.com/best](https://news.ycombinator.com/best)

Stories listed on the /best page differ from what’s on the TopHits page.

# Internals

tophits is made two parts. The service that uses hacker-news.firebaseio.com to track stories and the Ruby on Rails code that runs the website.

## Tracking Stories

news.firebaseio.com tracks all of the stories on hacker news.  Using firebasio means that stories can be tracked without having to scrape the html of the hacker news website. The service hn_collect.rb takes care of interaction with news.firebasio.com.

Before firebasio, tophits did download the html from news.ycombinator.com and scrape it. wget was used to capture the page and the service load_db.rb parses the html and stores the result. This legacy code remains. 

## Testing

TDD was used in writing tophits. Test library used is RSpec. 

Code coverage is greater than 90%.

### Testing External Services

Webrick is used to simulate communication with firebasio. Issues with the avaliabiliy of firebasio and general network errors have been tested for.
