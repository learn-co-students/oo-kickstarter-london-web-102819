
class Project 

    attr_reader :title, :backers
    

    def initialize(title)
        @title=title
        @backers=[]
        
    end 

 

    def add_backer(backer)
            check= @backers.any?{|el| el==backer}
            if check ==false
             @backers << backer
            backer.backed_projects<<self
            end 
        

    end
end 