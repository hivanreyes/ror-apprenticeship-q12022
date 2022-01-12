namespace :users do
  task add_email: :environment do
    user = User.all

    user.each do |user|
      user.email = "#{user.name}@wizeline.com"
      user.save
    end
  end
end