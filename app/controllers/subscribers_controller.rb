class SubscribersController < ApplicationController
  def index
    @subscribers = Subscriber.all
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      redirect_to about_path, notice: "Спасибо, что подписались на нашу рассылку)"
    else
      redirect_to about_path, notice: "Что-то пошло не так("
    end
  end

  private

    def subscriber_params
      params.require(:subscriber).permit(:email)
    end
end
