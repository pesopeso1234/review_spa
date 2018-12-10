class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_paranoid

  enum gender: {
    男性:1,女性:2,その他:3
  }

  enum age: {
    １０代:1,２０代:2,３０代:3,４０代:4,５０代:5,６０代:6,７０代以上:7
  }

end
