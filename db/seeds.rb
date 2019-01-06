puts "Creating Admin"
Admin.create_with(password: 'asdqwe123', password_confirmation: 'asdqwe123')
         .find_or_create_by(email: 'admin@example.com')