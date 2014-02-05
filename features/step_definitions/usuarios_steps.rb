nombre = 'adriel'
apellido = 'pinzas'
direccion = 'salamanca'
email = 'adriel@kosmyka.com'
password = '12345678'
telefono = '98765432'
direccion = 'salamanca'
ciudad = 'lima'
pais = 'peru'

Dado(/^lleno el formulario con los datos del usuario$/) do
  fill_in "Nombre", with: nombre
  fill_in "Apellido", with: apellido
  fill_in "Dirección", with: direccion
  fill_in "Teléfono", with: telefono
  fill_in "Email", with: email
  fill_in "Ciudad", with: ciudad
  fill_in "País", with: pais
  fill_in "usuario[password]", :with => password
  fill_in "Confirmar Contraseña", :with => password
end

Dado(/^que existe un usuario$/) do
  Usuario.new(:nombre => nombre, :apellido => apellido, :direccion => direccion, :telefono => telefono, :ciudad => ciudad, :pais => pais, :email => email, :password => password, :password_confirmation => password).save!
end

Dado(/^que he iniciado sesión como usuario$/) do
  Usuario.new(:nombre => nombre, :apellido => apellido, :direccion => direccion, :telefono => telefono, :ciudad => ciudad, :pais => pais, :email => email, :password => password, :password_confirmation => password).save!
  visit('/usuarios/ingresar')
  fill_in "Email", :with => email
  fill_in "Contraseña", :with => password
  click_button('Ingresar')
end
