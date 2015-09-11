class Todo < ActiveRecord::Base
  include Completable

  has_many :subtasks

  def completed?
    if subtasks.any?
      subtasks.all? { |st| st.completed }
    else
      completed
    end
  end

  def title=(title)
    write_attribute(:title, title.strip)
  end
end
