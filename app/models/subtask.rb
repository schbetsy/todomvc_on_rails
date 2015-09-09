class Subtask < ActiveRecord::Base
  belongs_to :todo

  scope :completed, -> { where("completed = ?", true) }
  scope :active, -> { where("completed = ?", false) }

  def title=(title)
    write_attribute(:title, title.strip)
  end
end
