class StudentsController < ApplicationController

    def index 
        @students = Student.all
    end

    def new 
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        #     first_name: params[:student][:first_name],
        #     last_name: params[:student][:last_name],
        #     email: params[:student][:email]
        # )
        if @student.save
            redirect_to students_path
        else
            render :new
        end  
    end 

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end
    
    private 

    def student_params
        params.require(:student).permit(:first_name, :last_name, :email)
    end


end
