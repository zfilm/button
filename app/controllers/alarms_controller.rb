class AlarmsController < ApplicationController
  def index
    @alarms = Alarm.all
  end
  
  def new
    @alarm = Alarm.new
  end
  
  def show
    @alarm = Alarm.find(params[:id])
  end
  
  def create
    @alarm = Alarm.new(alarm_params)
    
    if @alarm.save
      redirect_to @alarm
    else
      render "new"
    end
  end
  
  def edit
    @alarm = Alarm.find(params[:id])
  end
  
  def update
    @alarm = Alarm.find(params[:id])
  
    if @alarm.update(alarm_params)
      redirect_to @alarm
    else
      render "edit"
    end
  end
  
  private
    def alarm_params
      params.require(:alarm).permit(:incidentnr, :sitenr, :customernr, :impnr, :status, :customername, :adress, :post)
    end
end
