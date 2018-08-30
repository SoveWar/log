class WindowsEventsController < ApplicationController
  before_action :set_windows_event, only: [:show, :edit, :update, :destroy]

  # GET /windows_events
  # GET /windows_events.json
  def index
    @windows_events = WindowsEvent.all
  end

  # GET /windows_events/1
  # GET /windows_events/1.json
  def show
  end

  # GET /windows_events/new
  def new
    @windows_event = WindowsEvent.new
  end

  # GET /windows_events/1/edit
  def edit
  end

  # POST /windows_events
  # POST /windows_events.json
  def create
    @windows_event = WindowsEvent.new(windows_event_params)

    respond_to do |format|
      if @windows_event.save
        format.html { redirect_to @windows_event, notice: 'Windows event was successfully created.' }
        format.json { render :show, status: :created, location: @windows_event }
      else
        format.html { render :new }
        format.json { render json: @windows_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /windows_events/1
  # PATCH/PUT /windows_events/1.json
  def update
    respond_to do |format|
      if @windows_event.update(windows_event_params)
        format.html { redirect_to @windows_event, notice: 'Windows event was successfully updated.' }
        format.json { render :show, status: :ok, location: @windows_event }
      else
        format.html { render :edit }
        format.json { render json: @windows_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /windows_events/1
  # DELETE /windows_events/1.json
  def destroy
    @windows_event.destroy
    respond_to do |format|
      format.html { redirect_to windows_events_url, notice: 'Windows event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_windows_event
      @windows_event = WindowsEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def windows_event_params
      params.require(:windows_event).permit(:event_id, :client_id, :time, :samaccountname)
    end
end
