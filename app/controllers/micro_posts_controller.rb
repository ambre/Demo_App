class MicroPostsController < ApplicationController
  # GET /micro_posts
  # GET /micro_posts.xml
  def index
    @micro_posts = MicroPost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @micro_posts }
    end
  end

  # GET /micro_posts/1
  # GET /micro_posts/1.xml
  def show
    @micro_post = MicroPost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @micro_post }
    end
  end

  # GET /micro_posts/new
  # GET /micro_posts/new.xml
  def new
    @micro_post = MicroPost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @micro_post }
    end
  end

  # GET /micro_posts/1/edit
  def edit
    @micro_post = MicroPost.find(params[:id])
  end

  # POST /micro_posts
  # POST /micro_posts.xml
  def create
    @micro_post = MicroPost.new(params[:micro_post])

    respond_to do |format|
      if @micro_post.save
        format.html { redirect_to(@micro_post, :notice => 'Micro post was successfully created.') }
        format.xml  { render :xml => @micro_post, :status => :created, :location => @micro_post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @micro_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /micro_posts/1
  # PUT /micro_posts/1.xml
  def update
    @micro_post = MicroPost.find(params[:id])

    respond_to do |format|
      if @micro_post.update_attributes(params[:micro_post])
        format.html { redirect_to(@micro_post, :notice => 'Micro post was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @micro_post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /micro_posts/1
  # DELETE /micro_posts/1.xml
  def destroy
    @micro_post = MicroPost.find(params[:id])
    @micro_post.destroy

    respond_to do |format|
      format.html { redirect_to(micro_posts_url) }
      format.xml  { head :ok }
    end
  end
end
