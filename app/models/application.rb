class Application < ActiveRecord::Base
  belongs_to :job
  belongs_to :applicant

  validates :explanation, presence: true, length: {maximum: 500}                        
  validates :links, presence: true
  validates :salary, presence: true, 
                     numericality: { only_integer: true }
  validates :reason, length: {maximum: 500}, 
                     format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
end