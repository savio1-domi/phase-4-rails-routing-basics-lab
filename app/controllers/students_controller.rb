class StudentsController < ApplicationController
    def index
       names = Student.all
       render json: names
    end

    def grades
        b = Student.all 
        render json: b.order("grade DESC")
    end

    def highest_grade
        maxim = Student.maximum("grade")
        b = Student.find_by(grade: maxim)

        render json: b
    end
end