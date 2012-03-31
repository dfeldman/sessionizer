class Participant < ActiveRecord::Base
  has_many :sessions
  has_many :attendances
  has_many :sessions_attending, :through => :attendances, :source => :session
  has_many :presentations
  has_many :sessions_presenting, :through => :presentations, :source => :session

  validates_presence_of :name
  validates_presence_of :email
  validates_uniqueness_of :email, :case_sensitive => false, :allow_blank => true
end
