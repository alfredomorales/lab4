class AddIndexConstraints < ActiveRecord::Migration
  def self.up
	add_index :students, :student_id, :unique => true
    add_index :courses, :code, :unique => true
  end

  def self.down
	remove_index :students, :student_id
	remove_index :courses, :code
  end
end
