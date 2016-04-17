class Task < ActiveRecord::Base
  belongs_to :application
  belongs_to :task_type
  validates :name, presence: true,
                    length: {minimum: 5}
end
