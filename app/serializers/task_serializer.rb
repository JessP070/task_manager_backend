class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :deadline, :creator, :status, :project_id, :project
  # belongs_to :project
end
