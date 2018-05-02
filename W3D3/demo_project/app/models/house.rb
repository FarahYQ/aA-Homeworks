class House < ActiveRecord::Base
  has_many :person, {
    primary_key: :id,
    foreign_key: :house_id,
    class_name: 'Person'
  }

  # def persons
  #   Person.where(house_id: self.id)
  # end

end
