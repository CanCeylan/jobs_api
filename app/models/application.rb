class Application < ActiveRecord::Base
  belongs_to :job
  belongs_to :applicant

  validates :explanation, presence: true
  validates :urls, presence: true
  validates :salary, presence: true
  validates :explanation, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :reason, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :explanation, length: {maximum: 500}
  validates :reason, length: {maximum: 500}
  validates :salary, numericality: { only_integer: true }
end
