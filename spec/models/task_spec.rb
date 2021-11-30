require 'rails_helper'

RSpec.describe Task do
  # describe 'relationships' do
  # describe 'validations' do
  # describe 'class methods' do
  describe 'instance methods' do
    describe '#laundry?' do
      it 'returns true when task title is laundry' do
        task = Task.create!(title: 'laundry', description: 'clean clothes')

        expect(task.laundry?).to eq(true)
      end

      it 'returns false when the task title is not laundry' do
        task = Task.create!(title: 'dishes', description: 'clean dishes')

        expect(task.laundry?).to eq(false)
      end

      it 'returns false when neither the description nor title is laundry' do
        task = Task.create!(title: 'dishes', description: 'clean dishes')

        expect(task.laundry?).to eq(false)
      end

      it 'returns true when the title contains the word laundry' do
        task = Task.create!(title: 'bedding laundry', description: 'clean clothes')

        expect(task.laundry?).to eq(true)
      end

      it 'is case insensitive when checking if the title contains the word laundry' do
        task = Task.create!(title: 'BeddinG laUndRy', description: 'clean clothes')

        expect(task.laundry?).to eq(true)
      end

      it 'returns true when the description contains the word laundry' do
        task = Task.create!(title: 'task', description: 'dark clothes laundry')

        expect(task.laundry?).to eq(true)
      end

      it ' is case insensitive when checking if the description contains the word laundry' do
        task = Task.create!(title: 'task', description: 'DarK ClotHes LaunDry')

        expect(task.laundry?).to eq(true)
      end
    end
  end
end
