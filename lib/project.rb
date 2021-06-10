class Project

    attr_reader :title
    
  def  initialize(title)
@title = title
  end

  def add_backer (backer)
    ProjectBacker.new(self, backer)

  end 

  def backers
selected_backer_instance = ProjectBacker.all.select do |backer_instance| 
backer_instance.project == self
end
selected_backer_instance.map do |backer_instance|
    backer_instance.backer
  end
end
end 