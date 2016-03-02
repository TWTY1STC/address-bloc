#driver program
require_relative 'controllers/menu_controller'

menu = MenuController.new #creates new MenuController when AddressBook starts

system "clear"  #clears CLI
puts "Welcome to AddressBloc!"


menu.main_menu  #display menu