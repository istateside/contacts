class Contact < ActiveRecord::Base
  validates :name, :email, :user_id, presence: true
  validates :email, :uniqueness => { :scope => :user_id }

  belongs_to(
    :owner,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many :comments, as: :commentable

  has_many :contact_shares

  has_many :shared_users, through: :contact_shares, source: :user
end
