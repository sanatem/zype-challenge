require 'rails_helper'

RSpec.describe ZypeVideo, type: :model do
  let(:zype_video) { build(:zype_video) }

  it 'is created correctly' do
    expect(zype_video).to_not be_nil
  end

  context 'class methods' do
    it 'returns a collection of ZypeVideo' do
      videos = ZypeVideo.all
      expect(videos).to_not be_empty
      expect(videos).to be_an_instance_of(Array)
    end

    it 'returns ZypeVideo' do
      video = ZypeVideo.find(zype_video.id)
      expect(video).to_not be_nil
      expect(video).to be_an_instance_of(ZypeVideo)
    end
  end
end
