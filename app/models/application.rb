# coding: utf-8

class Application < ActiveRecord::Base
  belongs_to :job
  belongs_to :applicant

  validates :explanation, presence: true, length: {maximum: 500}, format: { with: /\A[\p{Word}\w\s\.-]*\z/i, message: "only allow letters, numbers and spaces" }                        
  validates :salary, presence: true, 
                     numericality: { only_integer: true, less_than:7000 }
  validates :reason, length: {maximum: 500}, format: { with: /\A[\p{Word}\w\s\.-]*\z/i, message: "only allow letters, numbers and spaces" }                   
end

# /^[A-Za-z\/\s\.'-]+$/

# /\A[a-zA-Z0-9_ ]*\z/   /^(?:[^\W_]|\s)*$/u


#/\A[-\w \.-_@]+\z/i