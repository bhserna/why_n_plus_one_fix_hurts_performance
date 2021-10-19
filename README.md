# Example app to understand why some times fixing some n+1 queries can hurt performance

This is an example application to help you visualize [why "fixing" an n+1
queries problem, can hurt the performance of your
application](2021-10-08-fixing-n-plus-1-queries-can-hurt-performance.html) if
you preload assocations with too many records.

It simulates the index page of a blog application. And appart from the
rack-mini-profiler gem, it shows the logs in the page to help you visualize
easily the queries, request time and allocations.

By default it has an n+1 queries problem. It makes a call to the database to
fetch the latest comment for each post in the list, but you can fix it with a
checkbox.

It will let you compare request times combining a filter of posts by number of
comments and the checkbox to "fix" the n+1 queries problem.

<div style="margin-bottom: 2rem">
<a href="https://www.loom.com/share/6405c42e78d74ef29277a2930e2b3834">
<p>WhyNPlusOneFixHurtsPerformance - Watch Video</p>
<img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/6405c42e78d74ef29277a2930e2b3834-with-play.gif">
</a>
</div>

You can read more on: http://bhserna/fixing-n-plus-one-queries-can-hurt-performance-example-app.html

# Ruby version
ruby-3.0.0

# System dependencies

* Postgres
* Redis

# Database creation and initialization

To use the app effectively you need to run the seeds.rb because it will create the 
posts that you need to test the app.

```ruby
seeds = Seeds.new
seeds.create_posts 20, comments_count: 5
seeds.create_posts 20, comments_count: 10
seeds.create_posts 20, comments_count: 50
seeds.create_posts 20, comments_count: 100
seeds.create_posts 20, comments_count: 1000
seeds.create_posts 20, comments_count: 10000
```

You can update that file to test other combinations.

To create and initializa the database for the first time you can use:

```
./bin/rails db:setup
```

If you want to reset the database and run new seeds, you can use:


```
./bin/rails db:reset
```
