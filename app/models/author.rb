class Author < ApplicationRecord
  has_many :books

  validates :first_name, presence: true
  validates :last_name, presence: true, uniqueness: true
  validates :author_img, length: { maximum: 250 }, allow_blank: true
  validates :bio, length: { maximum: 10000 }
  validates :quotes, length: { maximum: 1000 }, allow_blank: true



  def full_name
    first = read_attribute(:first_name)
    prefix = read_attribute(:prefix)
    last = read_attribute(:last_name)

    if prefix != ""
      full = "#{first} #{prefix} #{last}"
    else
      full = "#{first} #{last}"
    end
  end

end
