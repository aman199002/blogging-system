class CommentsController < ApplicationController
  def index
  	@comments = Comment.all
  end

  def new
  end

  def create  	  	
    @blog = Blog.find(params[:blog_id])  	
    @comment = Comment.new(params[:comment])
  	@comment.commentable = @blog    
  	respond_to do |format|
      if @comment.save
    	  format.html {redirect_to @blog}
        format.json { render json: @comment }
    	else
    	  format.html {render @blog}
        format.json { render json: @comment }
    	end		
    end  
  end

  def create_comment_from_json
    @blog = Blog.find(params[:blog_id])   
    @comment = Comment.new(:comment => params[:comment])
    @comment.commentable = @blog    
    respond_to do |format|
      if @comment.save        
        format.json { render json: @comment }
      else        
        format.json { render json: @comment }
      end   
    end  
  end  

end
