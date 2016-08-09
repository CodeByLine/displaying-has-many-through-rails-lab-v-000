class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  # def doctor_name=(name)
  #   self.doctor_id = Doctor.find_or_create_by(:name)
  #   super
  # end

  def real_time
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end
