require 'rails_helper'

RSpec.describe Todo, type: :model do
  subject { Todo.new(title: 'stuff to do') }

  it { should have_many :subtasks }

  describe 'completed?' do
    subject { Todo.create(title: 'stuff to do') }

    context 'has subtasks' do
      let(:st1) { subject.subtasks.create(title: 'one') }

      it 'returns true if all subtasks are completed' do
        st1.update_attributes(completed: true)
        expect(subject.completed?).to eq true
      end
      it 'returns false if any subtask is not completed' do
        st1.update_attributes(completed: false)
        expect(subject.completed?).to eq false
      end
    end

    context 'has no subtasks' do
      it 'returns true if `completed` is true in database' do
        subject.update_attributes(completed: true)
        expect(subject.completed?).to eq true
      end
      it 'returns false if `completed` is false in database' do
        subject.update_attributes(completed: false)
        expect(subject.completed?).to eq false
      end
    end
  end

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
