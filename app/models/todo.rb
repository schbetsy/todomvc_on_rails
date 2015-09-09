class Todo < ActiveRecord::Base
  include Completable

  has_many :subtasks

  def title=(title)
    write_attribute(:title, title.strip)
  end
end
