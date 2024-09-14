class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :saunas
  has_many :saunas, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_saunas, through: :likes, source: :sauna
  validates :name, presence: true
  validates :profile, length: { maximum: 200 }
  has_many :diary_entries
  def already_liked?(sauna)
    self.likes.exists?(sauna_id: sauna.id)
  end

end

