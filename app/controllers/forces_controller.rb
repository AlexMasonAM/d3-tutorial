class ForcesController < ActionController::Base
  def index
    @trucks = Truck.all
    @users = User.all

    # json_array = []

    # @users.each do |user|
    #   a = {name: user.user_name, trucks: []}
    #   json_array << a

    #   user.trucks.each do |truck|
    #     a[:trucks] << truck.truck_name
    #   end
    # end

    json_array_user_trucks = []
    json_array_truck_users = []

      @users.each do |user|
        a = {name: user.user_name, trucks: []}
        json_array_user_trucks << a

        user.trucks.each do |truck|
          a[:trucks] << truck.truck_name
        end
      end

      @trucks.each do |truck|
        a = {name: truck.truck_name, users: []}
        json_array_truck_users << a

        truck.users.each do |user|
          a[:users] << user.user_name
        end
      end

    @json_array = [{user_trucks: json_array_user_trucks}, {truck_users: json_array_truck_users}].to_json
    
    #render json: json_array overrides the 

    json_array = [{user_trucks: json_array_user_trucks}, {truck_users: json_array_truck_users}].to_json
    
    render json: json_array
  end
end


