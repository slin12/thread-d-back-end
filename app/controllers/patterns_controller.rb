class PatternsController < ApplicationController
  def create
    pattern = Pattern.create(user: current_user, url: params[:pattern][:url])
    if pattern.valid?
      render json: {pattern: pattern, user_patterns: current_user.patterns}
    else
      render json: {error: 'error with saving'}
    end
  end

  def destroy
    pattern = Pattern.find_by(url: params[:url])
    pattern.destroy
    render json: current_user
  end
end
