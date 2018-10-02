require 'rubygems'
require 'csv'



title_regex = /^(Director|Chief|Chair)/
file = "/Users/z/Downloads/doctors.csv"

doctors = []
file = File.open(file,"r:ISO-8859-1")
csv = CSV.parse(file)

titles = csv.map{|row| row[4]}.uniq
emails =  csv.select{|row|  title_regex.match(row[3])  }.map{|row| row[4]}.uniq
