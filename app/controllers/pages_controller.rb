class PagesController < ApplicationController
  def home
  @images=Image.all
  @projects=Project.all.order("rating DESC")
  end

  def contact

  end

  def about

  end

  def pricing

  end

  def sitemap

  end
end