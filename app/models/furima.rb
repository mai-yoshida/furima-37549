class Furima < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  belongs_to :prefecture
  belongs_to :condition
  validates :image,         presence: true
  validates :title,         presence: true
  validates :content,       presence: true
  validates :genre_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :condition_id, numericality: { other_than: 1 , message: "can't be blank"}
  validates :fee_id,        presence: true
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank"}
  validates :days_num_id,   presence: true
  validates :price,         presence: true


end