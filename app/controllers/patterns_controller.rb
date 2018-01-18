class PatternsController < ApplicationController
  def create
    pattern = Pattern.create(user: current_user, url: params[:pattern][:url])
    if pattern.valid?
      render json: {pattern: pattern, user_patterns: current_user.patterns}
    else
      render json: {error: 'error with saving'}
    end
  end

end
