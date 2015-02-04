class Application < ActiveRecord::Base
  belongs_to :job
  belongs_to :applicant

  validates :explanation, presence: true, length: {maximum: 500}, ,  format: { with: /\A[-a-z0-9- ]+\z/i, message: "only allows letters" }                        
  validates :salary, presence: true, 
                     numericality: { only_integer: true, less_than:7000 }
  validates :reason, length: {maximum: 500},  format: { with: /\A[-a-z0-9- ]+\z/i, message: "only allows letters" }
end