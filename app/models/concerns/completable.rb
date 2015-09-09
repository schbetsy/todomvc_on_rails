module Completable
  extend ActiveSupport::Concern

  included do
    scope :completed, -> { where("completed = ?", true) }
    scope :active, -> { where("completed = ?", false) }
  end
end
