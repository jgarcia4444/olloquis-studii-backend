class AppointmentConfirmationMailer < ApplicationMailer

    def appointment_confirmation
        @appointment = params[:appointment]
        @formattedDate = formatDate(@appointment.month_number, @appointment.day_number, 2020)
        mail(to: @appointment.email, subject: "Olloqui's Studio Appointment Confirmation")
    end

end
