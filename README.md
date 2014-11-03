
Metaprogramming in Ruby
========================

Looking at what can be done with metaprogrammimg in ruby.

Part 1 

We created a student class that has an array of awards. We used method missing to create a student methods has_*? method. That will take any method that starts with has_  and ends with ? and return whether or not the students award array contains the given string.

Part 2 

We re-wrote ruby attr_reader, attr_writer and attr_accesor again using method missing, but to allow for boolean properties (which ruby doesn't natively allow for).


Skills learnt/used
-----------------
> * ruby  
> * rspec
> * metaprogrammimg

How to use
----------

Clone the repository:

```shell 
$ git clone git@github.com:benjamintillett/metaprogramming.git
```

Run the tests:

```shell 
$ cd metaprogramming
$ rspec
```

Load irb:

```shell 
irb
```

Require the files:

```ruby
irb> Dir["lib/*.rb"].each {|file| require file }
```

Create a person and try out the new attr_accessor methods:

```ruby
irb>  Betty = Person.new ....
```



