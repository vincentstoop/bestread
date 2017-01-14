class Book < ApplicationRecord
    belongs_to :author

    validates :title, presence: true
    validates :title, uniqueness: true

    validates :year, length: { minimum: 4, maximum: 4}
    validates :cover_img, length: { maximum: 250 }, allow_blank: true
    validates :desc, length: { maximum: 10000}
    validates :pages, length: { maximum: 5}, allow_blank: true
    validates :isbn, length: { minimum: 10, maximum: 14}, allow_blank: true

end
