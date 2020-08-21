class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    #     - `Actor#roles`
    #     - should return a collection of all the roles that the actor has played
        
        #     Actor.first.roles
    



    #   - `Actor#movies`
    #     - should return a collection of all the movies that the actor has performed in
        # def movies
            # Actor.first.movies
        # end


        # - `Actor#total_salary`
#   - returns the total salary 
# for an actor based on the salary for each of their roles

        # def total_salary
        #     #Actor.all.max_by(:salary)
        #     binding.pry
        
        # end

    def self.most_successful
       most_salary = Role.all.max_by do |role_instance|
            role_instance.salary  
            end  
            most_salary.actor
        end

end