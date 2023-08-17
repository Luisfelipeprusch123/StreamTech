class HomeController < ApplicationController
  def index
  
  
    respond_to do |format|
      format.html
      format.js {
        render partial: 'search_results', locals: { searchResults: @search_results, shorts: @shorts }
      }
  
    youtube = Google::Apis::YoutubeV3::YouTubeService.new
    youtube.key = ENV['YOUTUBE_API_KEY']

query = params[:query]

    search_response = youtube.list_searches(
      'snippet',
      q: query,
      type: 'video',
      max_results: 30
    )


    response = youtube.list_searches(
      'snippet',
      q:  'shorts' ,
      type: 'video',
       video_category_id: '20',
      max_results: 30
    )

    @search_results = search_response.items
    @shorts = response.items
  end
end
end 
