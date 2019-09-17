require 'rails_helper'

RSpec.describe ZypeVideosController, type: :controller do
  let(:zype_video) { build(:zype_video) }

  context 'Successfull cases' do
    it 'GET /zype_videos' do
      get :index
      expect(response.status).to be(200)
    end

    it 'GET /zype_videos/:id' do
      get :show, params: { id: zype_video.id }
      expect(response.status).to be(200)
    end
  end

  context 'Error cases' do
    before do
      stub_request(:any, /.*/).to_return(body: 'errors', status: 404)
    end

    it 'Render Error page' do
      get :index
      expect(response).to render_template('zype_videos/error')
    end
  end
end
