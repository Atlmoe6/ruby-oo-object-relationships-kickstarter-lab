class Backer

    attr_reader :name 

  def  initialize(name)
@name = name 
  end

  def back_project (project)
    ProjectBacker.new(project, self)

  end 

  def backed_projects
    # Using two enumerables, create a variable containing the first enumerable
selected_project_backer = ProjectBacker.all.select do |project_backer_instance|
    project_backer_instance.backer == self
        #project_backer_instance.project
    end
    selected_project_backer.map do |selected_item|
selected_item.project
    end
end
  end
