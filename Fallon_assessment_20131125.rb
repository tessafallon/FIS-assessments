#1
array = ["Blake", "Ashley", "Jeff"]

array << ["Otto"]

array.each {|item| puts item}

puts array[1]

puts array.index("Jeff")

#2
instructor = {:name => "Ashley", :age => 27}

puts instructor[:location] = "NYC"

puts instructor.each {|k, v| puts k, v}

puts instructor[:name]

puts instructor.key(27)

#3
school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}

puts school[:founded_in] = 2013

school[:students] << {:name => "Tessa", :grade => "A"}

def remove_student (hash, name)
#COME BACK TO THIS
	end

school[:students].delete_if {|item| item.has_value?("Billy")}
puts school[:students]

school[:students].each {|hash| hash[:semester]="Summer"}

school[:instructors].each {|hash| hash
	hash.each_pair {|k, v| (v=="Ashley")? (hash[:subject]="being almost better than Blake") : nil}}
	puts school[:instructors]

school[:students].each {|hash| 
	hash.each_pair {|k, v| (v=="Tessa")? (puts hash[:grade]) : nil}}

school[:students].each {|hash|
	hash.each_pair {|k, v| (v=="Frank")? (hash[:grade]="F") : nil}}
	
school[:students].each {|hash|
hash.each_pair {|k, v| (v=="B")? (puts hash[:name]) : nil}}

school[:instructors].each {|hash|
hash.each_pair {|k, v| (v=="Jeff")? (puts hash[:subject]) : nil}}

school.each_pair {|k, v| puts k, v}
#school[:students]#[index_no][:grade]="new grade"


#school[:students].each {|grade, name| if grade == "B" puts "#{name}"}

#school[:instructors].each_pair {|name, subject| 
#	name.each {|item| item == "Jeff" puts subject}

#puts school.each #{|key, value| puts value}

#methods

