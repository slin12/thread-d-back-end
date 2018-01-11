class PatternsController < ApplicationController
  def create
    pattern = Pattern.create(user: current_user, url: params[:pattern][:url])
    if pattern.valid?
      render json: pattern
    else
      render json: {errors: 'error with saving'}
    end
  end

end
