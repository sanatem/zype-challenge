class ZypeVideo

  attr_accessor :id, :title, :thumbnail, :description

  def initialize(args = {})
    @id = args[:id]
    @title = args[:title]
    @thumbnail = args[:thumbnail]
    @description = args[:description]
  end

  def self.all
    videos = Api::Zype.new.index
    videos.map { |video| initialize_video(video) }
  end

  def self.find(id)
    initialize_video(Api::Zype.new.show(id))
  end

  def self.initialize_video(video)
    new(
      id: video['_id'],
      title: video['title'],
      thumbnail: video['thumbnails'][0]['url'],
      description: video['description']
    )
  end

end
