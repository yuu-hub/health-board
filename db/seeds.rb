# admin = Admin.new
AdminUser.create!(:email => 'admin@email.com', :password => 'admin1')
# admin.save!