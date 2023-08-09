require_relative '../classes/movie/movie'
require 'rspec'

describe Movie do
  let(:publish_date) { '1999/02/28' }

  subject { described_class.new(publish_date, silent: true) }

  describe '#can_be_archived?' do
    context 'when silent is true' do
      it 'returns true for a movie published more than 10 years ago' do
        expect(subject.can_be_archived?).to be(true)
      end

      it 'returns false for a movie published less than 10 years ago' do
        new_publish_date = '2023/02/28'
        movie = described_class.new(new_publish_date, silent: true)
        expect(movie.can_be_archived?).to be(false)
      end
    end

    context 'when silent is false' do
      subject { described_class.new(publish_date, silent: false) }
      it 'returns false regardless of publish year' do
        expect(subject.can_be_archived?).to be(false)
      end
    end
  end
end
