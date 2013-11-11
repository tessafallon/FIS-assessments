#1. Arrays
array = ["Blake","Ashley","Jeff"]

array.push("Bertie")

array.each {|k| puts "#{k}"}

puts array[1]

puts array.index("Jeff")

#2. Hashes

instructor = {:name=> "Ashley", :age=> 27}

instructor ["location"] = "NYC"

instructor.each {|k, v| puts "#{k}, #{v}"}

puts instructor[:name]

puts instructor.invert[27]

#3. Nested Structures
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

school ["founded_in"] = "2013"

school[:students] << {:name => "Tessa", :grade =>"A"}

school[:students].delete({:name=>"Billy", :grade=>"F"})

school[:students][0][:semester] = "summer"
school[:students][1][:semester] = "summer"
school[:students][2][:semester] = "summer"
school[:students][3][:semester] = "summer"

school[:instructors][1][:subject] = "being almost better than Blake"

school[:students][1][:grade] = "F"

if school[:students][0][:grade] == "B"
puts school[:students][0][:name]
else
puts "oops"
end

if school[:instructors][2][:name] == "Jeff"
puts school[:instructors][2][:subject]
else
puts "oops"
end

puts school.values

#4. Methods
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

def find_grade(student, school_var)
 school_var[:students].select {|students_hash| students_hash[:name] == student}
end

puts find_grade("Marissa", school)

def up_subj(instructor, new_sub, school_var)
	school_var[:instructors].each {|instr_hash| instr_hash[:subject] = new_sub if instr_hash[:name]== instructor}
end

puts up_subj("Blake", "being terrible", school)

def new_student (name, grade, school_var)
school_var[:students].push(:name=>"#{name}", :grade=>"#{grade}")
end

puts new_student("Tessa", "A", school)

def new_key (k, v, school_var)
school_var[k] = v
end

puts new_key("ranking", "1", school)

#5. Object orientation
class School
	SCHOOLS = [@name, @location, @ranking, @students, @instructors]

def reset(schools_var)
	schools_var.remove_const
end

attr_reader :ranking
attr_accessor :name
attr_accessor :location
attr_accessor :instructors
attr_accessor :students

def initialize(name, location, ranking, students, instructors)
	@name = name
	@location = location
	@ranking = ranking
	@students = students
	@instructors = instructors
end

def location
	@location
end

def set_ranking(n)
	@ranking = n
	puts "ranking = #{n}"
end

def add_student(name, grade, semester)
	@students = students
	@@name = name
	@@grade = grade
	@@semester = semester
	puts "A new student #{@@name} with a grade of #{@@grade} has been added for the #{@@semester}"
end

def del_student(name)
	FIS.delete(name)
	puts "#{@@name} removed from school."
end

def add_TL(key, value, school_var)
school_var = {key => value}
end
end

FIS = School.new("Happy Funtime School", "NYC", "1", "Bob", "Blake")

FIS.add_student("Marissa", "B", "summer")

FIS.add_TL("ranking", 1, School)

#6. Classes
class Students

def initialize(name, grade, semester)
@name = name
@grade = grade
@semester = semester
end

def find_student(name)
@name = name
puts Students.select(name)
end
end

#7. Self
#a. hello
#Student
#b. Student
#c. Self
#d. Self
#e. goodbye