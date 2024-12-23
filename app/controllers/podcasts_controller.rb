class PodcastsController < ApplicationController
  def index
    @random_podcast = Podcast.offset(rand(Podcast.count)).first # TODO: use cron
    @last_podcast = Podcast.last
  end

  def load_list
    podcasts = get_podcasts
    render partial: "podcasts_list", locals: { podcasts: podcasts }
  end

  def show
    @podcast = Podcast.find_by(id: params[:id])
  end

  def new
    @podcast = Podcast.new
  end

  def create
    @podcast = current_user.podcasts.build(podcast_params)

    if @podcast.save
      render :show, locals: { podcast: @podcast }
    else
      render :new, notice: @podcast.errors.full_messages
    end
  end

  def edit
    @podcast = Podcast.find_by(id: params[:id])
  end

  def update
    @podcast = Podcast.find(params[:id])

    if @podcast.update(podcast_params)
      render :show, locals: { podcast: @podcast }
    else
      render :edit
    end
  end

  def destroy
    @podcast = Podcast.find(params[:id])

    if @podcast.destroy
      redirect_to root_path
    else
      flash[:error] = @podcast.errors.full_messages
      render :show, locals: { podcast: @podcast }
    end
  end

  private

  def get_podcasts
    if current_user
      return current_user.podcasts if params[:filter] == "my_podcasts"
    end

    Podcast.all
  end

  def podcast_params
    params.require(:podcast).permit(:title, :description, :user_id, :photo, :audio)
  end
end
