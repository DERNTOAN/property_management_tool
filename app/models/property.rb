class Property < ApplicationRecord
  validates :property_type, :street, :house_number, :zip_code, :city, :living_space, :number_of_rooms, presence: true


  def update_stage(params)
    if params === "Advance Stage" && self.stage < 4
      self.stage += 1
    else
      self.stage = 4
    end
    self.save
  end

  def show_stage
    stages = ['lead', 'qualified_lead', 'contract_signed', 'sold', 'lost']
    stage = stages[self.stage]
    stage
  end
end
