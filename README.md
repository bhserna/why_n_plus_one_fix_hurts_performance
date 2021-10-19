# Example app to understand why some times fixing some n+1 queries can hurt performance

I want to share with you an example application to help you visualize [why
"fixing" an n+1 queries problem, can hurt the performance of your
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

<div style="position: relative; padding-bottom: 60.70826306913997%; height: 0;"><iframe src="https://www.loom.com/embed/6405c42e78d74ef29277a2930e2b3834" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;"></iframe></div>

You can read more on: http://bhserna/fixing-n-plus-one-queries-can-hurt-performance-example-app.html

# Ruby version
ruby-3.0.0

# System dependencies

* Postgres
* Redis

# Database creation and initialization

```
.bin/rails db:setup
```
