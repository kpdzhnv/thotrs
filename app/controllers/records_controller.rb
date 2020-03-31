class RecordsController < ApplicationController
  def show
    @records = Record.all.order(:time)
    @rooms = Room.all
    # @users = User.find()
  end

  def new
    @rooms = Room.all
    @record = Record.new(params[:record])

    @record.save
  end
end
