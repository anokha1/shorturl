class LinksController < ApplicationController

  def index
    @urls = Link.all
  end

  def show
    @link = Link.find_by_slug(params[:slug])
    render 'errors/404', status: 404 if @link.nil?
    @link.update_attribute(:clicked, @link.clicked + 1)
    redirect_to @link.url
  end

  def new
    @url=Link.new
  end

  def create
    Link.create(url: params['link']['url'])
  end

end
