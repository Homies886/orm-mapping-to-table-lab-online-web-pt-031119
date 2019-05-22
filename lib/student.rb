class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id=nil)
    @id = id
    @name = name
    @grade = grade
  end

  def self.create_table
    sql = "create table if not exists students (id integer primary key, name text, grade text);"
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = "drop table students;"
    DB[:conn].execute(sql)
  end

  
end
