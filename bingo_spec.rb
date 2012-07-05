# encoding: utf-8

#################################################
# how to run
#
# % gem install rspec
# % rspec --color --format doc ./bingo_spec.rb
#################################################

require_relative 'bingo'

describe Bingo do
  context '35回実行' do
    let(:count) {35}
    subject { Bingo.new }
    before do
      count.times do
        subject.select_number
      end
    end

    it { subject.should be_remain }
    it { subject.should_not be_unused(subject.used_numbers[4]) } # データが不定でヤダけど・・・
    it { subject.should be_unused(subject.remaining_numbers[4]) }
    it { subject.used_numbers.should have(count).items }
    it { subject.remaining_numbers.should have(Bingo::NUM_MAX - count).items }
  end

  context 'なくなるまで実行' do
    subject { Bingo.new }
    before do
      while subject.remain? do
        subject.select_number
      end
    end

    it { subject.should_not be_remain }
    it { subject.used_numbers.should have(Bingo::NUM_MAX).items }
    it { subject.remaining_numbers.should be_empty }
  end
end

