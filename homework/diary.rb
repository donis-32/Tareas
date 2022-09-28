puts('')

#Welcome message
puts ('This is your Diary')

#function to show menu
def dairy_menu
    puts ('Select a option to continue:')
    puts('')

    #Isntruction list
    puts('1 - Create new contact')
    puts('2 - See my contacts list')
    puts('3 - Update an contact')
    puts('4 - Delete an contact')

    puts('')
    fOption = gets.to_i
end

#Function to create a contact
def fNewContact
    puts "Entere the data of the new contact: "
    puts "First Name: "
    vFirstName = gets
    puts "Last Name: "
    vlastName = gets
    puts "E-mail: "
    vEmail = gets
    puts "Thelephone: "
    vThelephone = gets

    config = [vFirstName.delete!("\n"), vlastName.delete!("\n"), vEmail.delete!("\n"), vThelephone.delete!("\n"), "new"];
    

    #File.file?('ListOfContacs.txt', 'a') do |file|
     #   file.write(config);
    #end
    f = File.open('ListOfContacs.txt', 'a')
    f.write(config)
    f.close


    puts "Contact save.";
    dairy_menu;
end

#Function to read the contacts
def fReadContacs
    file = File.open('ListOfContacs.txt')
       varray = file.to_a
        
        puts varray
    
   
end


def fOption option
    case option
    when 1 then puts fNewContact
    when 2 then puts fReadContacs
    when 3 then puts "read"
    when 4 then puts "delete"
    else
        puts "Error in option"
        dairy_menu
    end
end

score = dairy_menu


result = case score
   when 1..4 then fOption score
   else system('clear')
        puts("Invalid option, select a option in the menu: ")
        dairy_menu
end
puts result