class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_many :debts, dependent: :destroy
has_many :loans, dependent: :destroy
has_many :expenses, dependent: :destroy

end
