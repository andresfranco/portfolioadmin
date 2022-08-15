class KnowledgeAreasController < ApplicationController
    def index
        @knowledge_areas = KnowledgeArea.all
    end
    def show
        @knowledge_area =KnowledgeArea.find(params[:id])
    end
    def new
        @knowledge_area = KnowledgeArea.new
      end

    def create
    @knowledge_area = KnowledgeArea.new(knowledge_area_params)
        if @knowledge_area.save
            redirect_to @knowledge_area
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
    @knowledge_area = KnowledgeArea.find(params[:id])
    end

    def update
    @knowledge_area = KnowledgeArea.find(params[:id])

    if @knowledge_area.update(knowledge_area_params)
        redirect_to @knowledge_area
    else
        render :edit, status: :unprocessable_entity
    end
    end

    def destroy
    @knowledge_area = KnowledgeArea.find(params[:id])
    @knowledge_area.destroy

    redirect_to knowledge_area_path, status: :see_other
    end

    private
    def knowledge_area_params
        params.require(:knowledge_area).permit(:name, :description)
    end


end
    