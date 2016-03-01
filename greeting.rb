def greeting
  first_arg,*the_rest=ARGV	
  the_rest.each do |name|
   puts "#{first_arg} #{name}"
  end
end


greeting
