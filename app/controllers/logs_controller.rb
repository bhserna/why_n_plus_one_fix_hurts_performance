class LogsController < ApplicationController
  def index
    @logs ||= `tail -n #{lines} log/#{Rails.env}.log`
  end

  private

  def lines
    params[:lines] || 100
  end
end
