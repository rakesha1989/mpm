class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable

  has_one :profile
  has_many :meeting_employees
  has_many :meetings, through: :meeting_employees
  has_many :wing_employees
  has_many :wingss, through: :wing_employees
  has_many :assignment_employees
  has_many :assignments, through: :assignment_employees
  belongs_to :company
  belongs_to :meeting
  belongs_to :wing


end
