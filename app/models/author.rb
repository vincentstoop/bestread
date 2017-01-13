class Author < ApplicationRecord
  has_many :books

  # def full_name
  #   if Author[:prefix] != ""
  #     full = "#{Author[:first_name]} #{Author[:prefix]} #{Author[:last_name]}"
  #   else
  #     full = :first_name + " " + :last_name
  #   end
  #   return full
  # end
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
