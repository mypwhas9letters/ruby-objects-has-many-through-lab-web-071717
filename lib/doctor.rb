require 'pry'

class Doctor

attr_accessor :name, :appointments

def initialize(name)
  @name = name
  @appointments = []
end

def add_appointment(appointment)
  @appointments << appointment
  appointment.doctor = self
end

def patients
#binding.pry
  @appointments.map do |x|
    x.patient
end
end

end
