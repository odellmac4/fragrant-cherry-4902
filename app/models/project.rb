class Project < ApplicationRecord
  belongs_to :challenge
  has_many :contestant_projects
  has_many :contestants, through: :contestant_projects

  def contestant_count
    contestants.count
  end

  def contestant_avg_experience
    contestants.average(:years_of_experience)
  end
end
