# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


*troubleshooting
2.6.3 :012 > Comment.where(task_id: 2)                                                                       
  Comment Load (0.2ms)  SELECT  "comments".* FROM "comments" WHERE "comments"."task_id" = $1 LIMIT $2  [["task_id", 2], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Comment id: 1, task_id: 2, content: "something", created_at: "2019-07-08 22:14:50", updated_at: "2019-07-08 22:14:50">]> 
 
 