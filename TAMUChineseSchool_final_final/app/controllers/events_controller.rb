class EventsController < ApplicationController
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  before_filter :authenticate_user!, :except => :index

  # GET /events
  # GET /events.json

  def index
    @active_page = "events"
    @user = current_user


    query = Event
    query = query.order("created_at DESC")

    query = query.all

    @events = query

    respond_to do |format|
      format.html
      format.json { render json: @events }
    end
  end

  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  def new
    @event = Event.new
    @active_page = "new_event"
    @user = current_user

    authorize @event

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event }
    end
  end

  def create
    @event = Event.new(event_params)
    authorize @event

    respond_to do |format|
      if @event.save
	format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event = Event.find(params[:id])

    authorize @event

    @event.destroy

    respond_to do |format|
      format.html { redirect_to events_url }
      format.json { head :no_content }
    end
  end

  private

  def event_params
    params.require(:event).permit(:year, :semester, :event_name, :event_description, :place, :time)
  end

  private

  def user_not_authorized
    flash[:error] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

end






