class StockSymbolsController < ApplicationController
  # GET /stock_symbols
  # GET /stock_symbols.xml
  def index
    @stock_symbols = StockSymbol.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @stock_symbols }
    end
  end

  # GET /stock_symbols/1
  # GET /stock_symbols/1.xml
  def show
    @stock_symbol = StockSymbol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @stock_symbol }
    end
  end

  # GET /stock_symbols/new
  # GET /stock_symbols/new.xml
  def new
    @stock_symbol = StockSymbol.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @stock_symbol }
    end
  end

  # GET /stock_symbols/1/edit
  def edit
    @stock_symbol = StockSymbol.find(params[:id])
  end

  # POST /stock_symbols
  # POST /stock_symbols.xml
  def create
    @stock_symbol = StockSymbol.new(params[:stock_symbol])

    respond_to do |format|
      if @stock_symbol.save
        format.html { redirect_to(@stock_symbol, :notice => 'StockSymbol was successfully created.') }
        format.xml  { render :xml => @stock_symbol, :status => :created, :location => @stock_symbol }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @stock_symbol.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /stock_symbols/1
  # PUT /stock_symbols/1.xml
  def update
    @stock_symbol = StockSymbol.find(params[:id])

    respond_to do |format|
      if @stock_symbol.update_attributes(params[:stock_symbol])
        format.html { redirect_to(@stock_symbol, :notice => 'StockSymbol was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @stock_symbol.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_symbols/1
  # DELETE /stock_symbols/1.xml
  def destroy
    @stock_symbol = StockSymbol.find(params[:id])
    @stock_symbol.destroy

    respond_to do |format|
      format.html { redirect_to(stock_symbols_url) }
      format.xml  { head :ok }
    end
  end
end
