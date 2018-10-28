class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]
   skip_before_action :verify_authenticity_token  


  # GET /comments
  def index
    @comments = Comment.all
    render json: @comments.to_json
  end

  # GET /comments/1
  # GET /comments/1.json

  # POST /comments
  # POST /comments.json
  def create
    if params.present?
      Comment.create(name: params[:author], description: params[:text], rating: params[:rating])
    end
    render json: {success: "Sucessfully Commented"}
  end

end
