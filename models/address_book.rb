require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
		@entries = []
  end

  def add_entry(name, phone_number, email)
		index = 0
		entries.each do |entry|
		  if name < entry.name
		    break
		  end
		  index +=1
		end
		entries.insert(index, Entry.new(name, phone_number, email))
  end

  def remove_entry(name, phone_number, email)
		index = 0			 # entries.size    			
		entries.each do |entry|
		  if name != entry.name  #instead of name, consider using another identifier since names are not always unique
		    break									#best precaution is to check that all the identifiers match, see chkpt video.
		  else
		   entries.delete(entry)	
		  end
		  index +=1
		end
  end
end
