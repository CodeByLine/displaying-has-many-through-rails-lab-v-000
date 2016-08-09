class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  # def doctor_name=(name)
  #   self.appointment = Appointment.find_or_create_by(:doctor_id)
  # end

end
