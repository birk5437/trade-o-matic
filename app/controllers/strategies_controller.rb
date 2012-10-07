class StrategiesController < ApplicationController
  # GET /strategies
  # GET /strategies.xml
  def index
    @strategies = Strategy.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @strategies }
    end
  end

  # GET /strategies/1
  # GET /strategies/1.xml
  def show
    @strategy = Strategy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @strategy }
    end
  end

  # GET /strategies/new
  # GET /strategies/new.xml
  def new
    @strategy = Strategy.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @strategy }
    end
  end

  # GET /strategies/1/edit
  def edit
    @strategy = Strategy.find(params[:id])
  end

  # POST /strategies
  # POST /strategies.xml
  def create
    @strategy = Strategy.new(params[:strategy])

    respond_to do |format|
      if @strategy.save
        format.html { redirect_to(@strategy, :notice => 'Strategy was successfully created.') }
        format.xml  { render :xml => @strategy, :status => :created, :location => @strategy }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @strategy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /strategies/1
  # PUT /strategies/1.xml
  def update
    @strategy = Strategy.find(params[:id])

    respond_to do |format|
      if @strategy.update_attributes(params[:strategy])
        format.html { redirect_to(@strategy, :notice => 'Strategy was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @strategy.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /strategies/1
  # DELETE /strategies/1.xml
  def destroy
    @strategy = Strategy.find(params[:id])
    @strategy.destroy

    respond_to do |format|
      format.html { redirect_to(strategies_url) }
      format.xml  { head :ok }
    end
  end
end
