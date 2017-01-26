class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :member
  belongs_to :organization, optional: true

  after_create :create_member

  private

  def create_member
    member = Member.create!(email: email)
    update(member: member)
  end
end
