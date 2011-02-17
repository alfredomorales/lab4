class CreateEnrollments < ActiveRecord::Migration
  def self.up
  end

  def self.down
  end
end

class CreateCoursesStudents < ActiveRecord::Migration
  def self.up
    create_table :courses_students, :id => false do |t|
      t.references :course, :student
      t.timestamps
    end    
  end
  def self.down
    drop_table :courses_students
  end
end
