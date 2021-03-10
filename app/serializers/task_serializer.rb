class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :deadline, :creator, :status
end
