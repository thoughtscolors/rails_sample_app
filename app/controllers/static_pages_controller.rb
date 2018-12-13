class StaticPagesController < ApplicationController
  # < means staticpagescontroller inherits from applicationcontroller class
  # when visiting the URL /static_pages/home, Rails looks in the Static Pages controller and executes the code in the home action, and then renders the view corresponding to the action.
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

end
