class Task

  attr_reader :title, :content, :id

  @@count = 0

  def initialize(title:, content:)
    @id = @@count += 1
    @title = title
    @content = content
  end

  def info
    "[No#{@id}]#{@title}:#{@content}"
  end

end

class ToDo

  def initialize
    @tasks = []
  end

  def add(task)
    puts "【追加】#{task.info}"
    @tasks.push(task)
  end

  def info
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
    @tasks.each do |task|
      puts "#{task.info}"
    end
    puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
  end

end

task1 = Task.new(title: "洗濯", content: "7時半までに干し終える")
task2 = Task.new(title: "仕事", content: "9時〜18時")
task3 = Task.new(title: "買物", content: "卵,ネギ")

puts task1.id
puts task2.title
puts task3.content
puts task1.info
puts task2.info
puts task3.info

todo = ToDo.new
todo.add(task1)
todo.add(task2)
todo.info
# todo.delete(id: 1)
# todo.add(task3)
# todo.delete(id: 4)
# todo.delete(id: 3)
# todo.info
