require_relative '../classes/music/music_album'
require 'rspec'

describe MusicAlbum do
  let(:publish_date) { '1999/02/28' }

  subject { described_class.new(publish_date: publish_date, on_spotify: true) }

  describe '#can_be_archived?' do
    context 'when on_spotify is true' do
      it 'returns true for a music released more than 10 years ago' do
        expect(subject.can_be_archived?).to be(true)
      end

      it 'returns false for a music released less than 10 years ago' do
        new_publish_date = '2023/02/28'
        music_album = described_class.new(publish_date: new_publish_date, on_spotify: true)
        expect(music_album.can_be_archived?).to be(false)
      end
    end
