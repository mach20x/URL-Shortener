class LinksController < ApplicationController
    before_action :set_link, only: [:show]
    # before_action :set_link_alt, only: :show_alt
    # before_action :create_shortURL, only: :new

    def index
      @link = Link.all
    end

    def show
      redirect_to @link.longURL
    end
    #
    # def show_alt
    #   redirect_to @link.longURL
    # end

    def new
      @link = Link.new
    end

    def create
      @link = Link.new(link_params)
      if @link.save
        redirect_to link_index_path, notice: 'Link shortened!'
      else
        render :new
      end
    end

    private
    def link_params
      params.require(:link).permit(:longURL, :shortURL)
    end

    def set_link
      @link = Link.find(params[:id])
    end

    # def set_link_alt
    #   @link = Link.find_by(shortURL: params[:shortURL])
    # end

    # def create_shortURL
    #   @shortURL = LinkGenerator.generate
    # end
  end
