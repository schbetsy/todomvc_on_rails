require 'rails_helper'

RSpec.describe Todo, type: :model do
  subject { Todo.new(title: 'stuff to do') }
  describe 'completed' do
    it 'returns true for completed todos' do
      expect(subject.completed).to be_false
    end
  end
end
