#! /usr/bin/ruby
# Create random 9-length string password

o = [('a'..'z'), ('A'..'Z'), (0..9)].map { |i| i.to_a }.flatten
string = (0...10).map { o[rand(o.length)] }.join

$stdout.puts string
