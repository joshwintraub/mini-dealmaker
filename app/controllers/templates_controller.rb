class TemplatesController < ApplicationController
  before_action :set_template, only: [:show, :edit, :update, :destroy]

  def index
    @templates = Template.all
  end

  def show

  end

  def new
    @template = Template.new
  end

  def create
    @template = Template.new(template_params)
    if @template.save
      flash[:notice] = "Question was saved successfully."
      redirect_to templates_path
    else
      render 'new'
    end
  end

  def destroy
    @template.destroy
    flash[:notice] = "Template was successfully deleted."
    redirect_to templates_path
  end

  private

  def set_template
    @template = Template.find(params[:id])
  end

  def template_params
    params.require(:template).permit(:id, :name, question_ids: [])
  end

end
