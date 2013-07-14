class HomepageController < ApplicationController
  def index
    @sections = Section.all
    @slides = Slide.all
  end
end