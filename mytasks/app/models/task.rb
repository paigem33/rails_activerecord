class Task < ApplicationRecord
    belongs_to :task_list
    has_many :comments
end
