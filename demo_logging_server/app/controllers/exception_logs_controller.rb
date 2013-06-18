class ExceptionLogsController < ApplicationController
  # GET /exception_logs
  # GET /exception_logs.json
  def index
    @exception_logs = ExceptionLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exception_logs }
    end
  end

  # GET /exception_logs/1
  # GET /exception_logs/1.json
  def show
    @exception_log = ExceptionLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exception_log }
    end
  end

  # GET /exception_logs/new
  # GET /exception_logs/new.json
  def new
    @exception_log = ExceptionLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exception_log }
    end
  end

  # GET /exception_logs/1/edit
  def edit
    @exception_log = ExceptionLog.find(params[:id])
  end

  # POST /exception_logs
  # POST /exception_logs.json
  def create
    @exception_log = ExceptionLog.new(params[:exception_log])

    respond_to do |format|
      if @exception_log.save
        format.html { redirect_to @exception_log, notice: 'Exception log was successfully created.' }
        format.json { render json: @exception_log, status: :created, location: @exception_log }
      else
        format.html { render action: "new" }
        format.json { render json: @exception_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exception_logs/1
  # PUT /exception_logs/1.json
  def update
    @exception_log = ExceptionLog.find(params[:id])

    respond_to do |format|
      if @exception_log.update_attributes(params[:exception_log])
        format.html { redirect_to @exception_log, notice: 'Exception log was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exception_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exception_logs/1
  # DELETE /exception_logs/1.json
  def destroy
    @exception_log = ExceptionLog.find(params[:id])
    @exception_log.destroy

    respond_to do |format|
      format.html { redirect_to exception_logs_url }
      format.json { head :no_content }
    end
  end
end
