require 'rubygems'
require 'csv'


title_regex = /^(Director|Chief|Chair)[^Nurse]/
file = "/Users/z/Downloads/doctors.csv"

doctors = []
file = File.open(file,"r:ISO-8859-1")


full_list = CSV.parse(file)
only_matches =  csv.select{|row|  title_regex.match(row[3])  }


titles = csv.map{|row| row[2] }.uniq.sort
puts titles