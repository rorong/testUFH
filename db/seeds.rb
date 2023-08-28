puts "--------------------------------------------------------\n"
puts "Roles created"

User::ROLES.each do |role_name|
  Role.find_or_create_by(name: role_name)
end

puts "--------------------------------------------------------\n"

if User.find_by(email:"admin@example.com").blank?
  puts "--------------------------------------------------------\n"
  admin_user = User.new({
    first_name: "Admin", last_name: "User", phone_number: "7584391364", city: "Rohini", state: "Delhi", zip_code: "154678", industry: "Industry 1", biography: "I am admin", first_attempt: true, public: true, email: "admin@example.com", password: "password123", password_confirmation: 'password123' })

  admin_user.avatar = Rails.root.join("app/assets/images/admin.png").open

  if admin_user.save!
    puts "Default admin User created"
  end

  # Assign admin role
  admin_user.add_role(User::ADMIN.to_sym)

  puts "--------------------------------------------------------\n"
end
