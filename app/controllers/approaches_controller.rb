class ApproachesController < ApplicationController
  def index
    @approaches = Approach.all

    render("approaches/index.html.erb")
  end

  def show
    @approach = Approach.find(params[:id])

    render("approaches/show.html.erb")
  end

  def new
    @approach = Approach.new

    render("approaches/new.html.erb")
  end

  def create
    @approach = Approach.new

    @approach.user_id = params[:user_id]
    @approach.venue_id = params[:venue_id]
    @approach.opener_id = params[:opener_id]

    save_status = @approach.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/approaches/new", "/create_approach"
        redirect_to("/approaches")
      else
        redirect_back(:fallback_location => "/", :notice => "Approach created successfully.")
      end
    else
      render("approaches/new.html.erb")
    end
  end

  def edit
    @approach = Approach.find(params[:id])

    render("approaches/edit.html.erb")
  end

  def update
    @approach = Approach.find(params[:id])

    @approach.user_id = params[:user_id]
    @approach.venue_id = params[:venue_id]
    @approach.opener_id = params[:opener_id]

    save_status = @approach.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/approaches/#{@approach.id}/edit", "/update_approach"
        redirect_to("/approaches/#{@approach.id}", :notice => "Approach updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Approach updated successfully.")
      end
    else
      render("approaches/edit.html.erb")
    end
  end

  def destroy
    @approach = Approach.find(params[:id])

    @approach.destroy

    if URI(request.referer).path == "/approaches/#{@approach.id}"
      redirect_to("/", :notice => "Approach deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Approach deleted.")
    end
  end
end