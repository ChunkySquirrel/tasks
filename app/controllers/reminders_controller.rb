class RemindersController < ApplicationController
  before_action :authenticate

  def index
    @reminders = current_user.reminders.all
  end

  def new
    @reminder = Reminder.new
  end

  def create
    @reminder = Reminder.new reminder_params
    @reminder.user = current_user
    if @reminder.save
      redirect_to reminders_path, notice: "Reminder created"
    else
      render :new
    end
  end
  private
  def reminder_params
    params.require(:reminder).permit(:title,:body)    
  end

end
