class OpenersController < ApplicationController
  def index
    @openers = Opener.page(params[:page]).per(10)

    render("openers/index.html.erb")
  end

  def show
    @approach = Approach.new
    @opener = Opener.find(params[:id])

    render("openers/show.html.erb")
  end

  def new
    @opener = Opener.new

    render("openers/new.html.erb")
  end

  def create
    @opener = Opener.new

    @opener.styles_id = params[:styles_id]
    @opener.title = params[:title]
    @opener.line = params[:line]

    save_status = @opener.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/openers/new", "/create_opener"
        redirect_to("/openers")
      else
        redirect_back(:fallback_location => "/", :notice => "Opener created successfully.")
      end
    else
      render("openers/new.html.erb")
    end
  end

  def edit
    @opener = Opener.find(params[:id])

    render("openers/edit.html.erb")
  end

  def update
    @opener = Opener.find(params[:id])

    @opener.styles_id = params[:styles_id]
    @opener.title = params[:title]
    @opener.line = params[:line]

    save_status = @opener.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/openers/#{@opener.id}/edit", "/update_opener"
        redirect_to("/openers/#{@opener.id}", :notice => "Opener updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Opener updated successfully.")
      end
    else
      render("openers/edit.html.erb")
    end
  end

  def destroy
    @opener = Opener.find(params[:id])

    @opener.destroy

    if URI(request.referer).path == "/openers/#{@opener.id}"
      redirect_to("/", :notice => "Opener deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Opener deleted.")
    end
  end
end
