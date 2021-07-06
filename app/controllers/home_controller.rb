class HomeController < ApplicationController
  def index
  end

  def no_query
    redirect_to action: :index
  end

  def move_with_field
    redirect_to action: :index, ham: 'spam'
  end

  def move_with_unpermitted_params
    redirect_to action: :index, **params
  end

  def move_with_permitted_params
    p = move_params
    redirect_to action: index, **p
  end

  private

  def move_params
    params.permit(:foo, :bar)
  end
end
