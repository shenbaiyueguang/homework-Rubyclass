require 'open-uri'
require 'nokogiri'
$number = 1   	
def generateweb
	doc = Nokogiri::HTML(open("http://en.wikipedia.org/wiki/Special:Random"))
	str =  doc.text
	m = str.split.sort
	h = {}
	m.each do |mmm|
		h[mmm] = h[mmm] || 0
		h[mmm] += 1
	end
	h = h.to_a.sort{|b,a| a[1] <=> b[1]}.to_h
	$i = 0
	h.each do |key, value|
		
			puts  "#{key} => #{value}" if $i < (100) 
			$i += 1
			break if $i > (100)

	end
		puts "End at #{Time.now}" 						#seperate from other threads ,because there is ten web page to load
end
t1=Thread.new{generateweb()}
t2=Thread.new{generateweb()}
t3=Thread.new{generateweb()}
t4=Thread.new{generateweb()}
t1.join
t2.join
t3.join
t4.join

t1=Thread.new{generateweb()}
t2=Thread.new{generateweb()}
t3=Thread.new{generateweb()}
t4=Thread.new{generateweb()}
t1.join
t2.join
t3.join
t4.join

t1=Thread.new{generateweb()}
t2=Thread.new{generateweb()}
t1.join
t2.join






