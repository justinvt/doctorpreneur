require 'rubygems'
require 'csv'


title_regex = /^(Director|Chief|Chair)[^Nurse]/
file = "/Users/z/Downloads/doctors.csv"

doctors = []
file = File.open(file,"r:ISO-8859-1")


full_list = CSV.parse(file)
only_matches =  full_list.select{|row|  title_regex.match(row[3])  }


titles = full_list.map{|row| row[2] }.uniq.sort

f = File.new("docs/titles.txt", "w:UTF-8")
f.write(titles.join("\n"))     #=> 10
f.close   