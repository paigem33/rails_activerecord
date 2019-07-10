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

*troubleshooting*
ubuntu:~/environment $ cd thirdtry/
ubuntu:~/environment/thirdtry (master) $ rails c
Running via Spring preloader in process 5410
Loading development environment (Rails 5.2.3)
2.6.3 :001 > card1
Traceback (most recent call last):
        1: from (irb):1
NameError (undefined local variable or method `card1' for main:Object)
2.6.3 :002 > Card(1)
Traceback (most recent call last):
        2: from (irb):2
        1: from (irb):2:in `rescue in irb_binding'
NoMethodError (undefined method `Card' for main:Object)
2.6.3 :003 > card(1)
Traceback (most recent call last):
        2: from (irb):3
        1: from (irb):3:in `rescue in irb_binding'
NoMethodError (undefined method `card' for main:Object)
2.6.3 :004 > Card.find(1)
  Card Load (0.3ms)  SELECT  "cards".* FROM "cards" WHERE "cards"."id" = $1 LIMIT $2  [["id", 1], ["LIMIT", 1]]
 => #<Card id: 1, number: "123456789", exp_date: "1234", owner_id: 1, created_at: "2019-07-08 18:28:25", updated_at: "2019-07-08 20:11:19", limit: 250> 
2.6.3 :005 > c
Traceback (most recent call last):
        1: from (irb):5
NameError (undefined local variable or method `c' for main:Object)
Did you mean?  cb
2.6.3 :006 > c = Cards.where(owner_id: 2)
Traceback (most recent call last):
        2: from (irb):6
        1: from (irb):6:in `rescue in irb_binding'
NameError (uninitialized constant Cards)
2.6.3 :007 > c = Card.where(owner_id: 2)
  Card Load (0.2ms)  SELECT  "cards".* FROM "cards" WHERE "cards"."owner_id" = $1 LIMIT $2  [["owner_id", 2], ["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Card id: 3, number: "111154321", exp_date: "1131", owner_id: 2, created_at: "2019-07-08 18:38:55", updated_at: "2019-07-08 20:11:24", limit: 1000>, #<Card id: 2, number: "987654321", exp_date: "1031", owner_id: 2, created_at: "2019-07-08 18:37:41", updated_at: "2019-07-08 20:13:33", limit: 200>]> 
2.6.3 :008 > c.sum(:limit)
   (0.3ms)  SELECT SUM("cards"."limit") FROM "cards" WHERE "cards"."owner_id" = $1  [["owner_id", 2]]
 => 1200 
2.6.3 :009 > card2.update(limit: 200)
Traceback (most recent call last):
        1: from (irb):9
NameError (undefined local variable or method `card2' for main:Object)
2.6.3 :010 > Card.find(2).update(limit: 200)
  Card Load (0.7ms)  SELECT  "cards".* FROM "cards" WHERE "cards"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
   (0.1ms)  BEGIN
  Owner Load (0.2ms)  SELECT  "owners".* FROM "owners" WHERE "owners"."id" = $1 LIMIT $2  [["id", 2], ["LIMIT", 1]]
   (0.1ms)  COMMIT
 => true 
2.6.3 :011 > 