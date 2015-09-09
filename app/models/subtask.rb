class Subtask < ActiveRecord::Base
  include Completable

  belongs_to :todo

  def title=(title)
    write_attribute(:title, title.strip)
  end
end
