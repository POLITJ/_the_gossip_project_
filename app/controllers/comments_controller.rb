class CommentsController < ApplicationController

def new
  @comment = Comment.new
  @gossip = Gossip.find(params[:gossip_id])

  puts "n" * 100
end

  def create
    @gossip = Gossip.find(params[:gossip_id])
    puts "c" * 100
    # @gossip = Gossip.create(:user => User.all.sample, :title => params[:title], :content => params[:content])
    # redirect_to root_path
      #@comment = Comment.new(:user_id => User.all.sample, :commentable_type => "Gossip", :commentable_id => params[:gossip_id], :content => params[:content]) # avec xxx qui sont les données obtenues à partir du formulaire
      @comment = Comment.new(:user => User.all.sample, :commentable => @gossip, :content => params[:content])
      if @comment.save # essaie de sauvegarder en base @gossip
        redirect_to gossip_path(@gossip.id) # si ça marche, il redirige vers la page d'index du site
      else
        # sinon, il render la view new (qui est celle sur laquelle on est déjà)
        render new_gossip_path
      end
  end
end
