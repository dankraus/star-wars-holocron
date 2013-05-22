class NewsEntriesController < ApplicationController
  # GET /news_entries
  # GET /news_entries.json
  def index
    render json: NewsEntry.limit(params[:limit]).to_json(include: [:feed])
  end

  # GET /news_entries/:id
  # GET /news_entries/:id.json
  def show
    render json: NewsEntry.find(params[:id]).to_json(include: [:feed])
  end
end
