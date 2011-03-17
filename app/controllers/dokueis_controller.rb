class DokueisController < ApplicationController
  # GET /dokueis
  # GET /dokueis.xml
  def index
    @dokueis = Dokuei.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dokueis }
    end
  end

  # GET /dokueis/1
  # GET /dokueis/1.xml
  def show
    @dokuei = Dokuei.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dokuei }
    end
  end

  # GET /dokueis/new
  # GET /dokueis/new.xml
  def new
    @dokuei = Dokuei.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dokuei }
    end
  end

  # GET /dokueis/1/edit
  def edit
    @dokuei = Dokuei.find(params[:id])
  end

  # POST /dokueis
  # POST /dokueis.xml
  def create
    @dokuei = Dokuei.new(params[:dokuei])

    respond_to do |format|
      if @dokuei.save
        format.html { redirect_to(@dokuei, :notice => 'Dokuei was successfully created.') }
        format.xml  { render :xml => @dokuei, :status => :created, :location => @dokuei }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dokuei.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dokueis/1
  # PUT /dokueis/1.xml
  def update
    @dokuei = Dokuei.find(params[:id])

    respond_to do |format|
      if @dokuei.update_attributes(params[:dokuei])
        format.html { redirect_to(@dokuei, :notice => 'Dokuei was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dokuei.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dokueis/1
  # DELETE /dokueis/1.xml
  def destroy
    @dokuei = Dokuei.find(params[:id])
    @dokuei.destroy

    respond_to do |format|
      format.html { redirect_to(dokueis_url) }
      format.xml  { head :ok }
    end
  end
end
