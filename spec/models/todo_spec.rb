require 'rails_helper'

RSpec.describe Todo, type: :model do
  subject { Todo.new(title: 'stuff to do') }

  describe 'title=' do
    it 'strips whitespace' do
      expect do
        subject.title = '   different title      '
      end.to change {subject.title}.to('different title')
    end

    it 'saves new title' do
      expect do
        subject.title = 'new title'
      end.to change {subject.title}.to('new title')
    end

  end
end
