class KnowledgeAreasController < ApplicationController
    before_action :set_knowledge_area, only: %i[ show edit update destroy ]
    def index
        @knowledge_areas = KnowledgeArea.all
    end
   
    def show
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
    end

    def update
        if @knowledge_area.update(knowledge_area_params)
            redirect_to @knowledge_area
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @knowledge_area.destroy
        respond_to do |format|
            format.html { redirect_to knowledge_areas_path ,status: :see_other ,notice:"Knowledge Area was successfully destroyed."}
            format.json{ head :no_content}
        end
        
    end

    def set_knowledge_area
        @knowledge_area = KnowledgeArea.find(params[:id])
    end
    

    private
    def knowledge_area_params
        params.require(:knowledge_area).permit(:name, :description)
    end


end
    