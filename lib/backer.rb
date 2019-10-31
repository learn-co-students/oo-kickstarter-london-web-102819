
class Backer

    attr_reader :name, :backed_projects
    

    def initialize(name)
        @name=name
        @backed_projects=[]
    end 


  

    def back_project(project)
        # check = @backed_projects.any? {|el| el==project}
        # if check==false
        #     @backed_projects << project 
        #     project.backers << self
        # end  

        if !@backed_projects.include? project
            @backed_projects << project 
            project.backers << self
        end  
    end 
end 