class CommentsController < ApplicationController

	before_action :authorize, :only => [:create]

	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)
		if comment.save
			redirect_to article_path(@article), notice: "Succesfully created a comment."
		else
			redirect_to article_path(@article), alert: "Comment could not be created!"
		end
	end

	def destroy
		#for admin authorization
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		redirect_to articles_path(@article)
	end

	private

	def comment_params
		params.require(:comment).permit(:commenter, :body)
	end
end
