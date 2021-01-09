require './student'
Array names = ['Andrew', 'William', 'James', 'Harper', 'Mason', 'Evelyn', 'Ella', 'Avery']
Array last_names = ['Smith', 'Jones', 'Williams', 'Brown']
Array students = []
10.times do
  students.push(Student.new(rand(39000..39999), names.sample, last_names.sample, [true, false].sample))
end
students.each { |student|
  if student.status
    puts student.show
  end
}
#