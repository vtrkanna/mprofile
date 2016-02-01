class UsersController < ApplicationController

  def index
    @tasks = Task.order("created_at desc")
    @activities = Task.order("created_at desc")
  end

end
