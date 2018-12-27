class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_paranoid
  has_many :review
  belongs_to :area
  enum gender: {
    男性:1,女性:2,その他:3
  }

  enum age: {
    １０代:1,２０代:2,３０代:3,４０代:4,５０代:5,６０代:6,７０代以上:7
  }

  validates :nickname, presence: true, length: { maximum: 20 }
  validates :user_name, presence: true , length: { maximum: 20 }
  validates :kana_name, presence: true , length: { maximum: 30 }, format: {with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/}
  validates :gender, presence: true
  validates :age, presence: true
  validates :area_id, presence: true
  validates :password, presence: true , length: { minimum: 6 }
end
