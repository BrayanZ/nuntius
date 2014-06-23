class API::V1::StoriesController < ApplicationController
  def index
    project = Project.find(params[:project_id])
    render json: project.stories
  end
end
