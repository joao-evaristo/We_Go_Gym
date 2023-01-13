module AcademiaHelper
    def order_by_location(lat, lng)
        order_by_distance_query = "select id
        FROM
        ( SELECT id, ((ACOS(SIN(#{lat} * PI() / 180) * SIN(u.lat * PI() / 180) + COS(#{lat} * PI() / 180) * COS(u.lat * PI() / 180) * COS((#{lng} - u.lng) * PI() / 180)) * 180 / PI()) * 60 * 1.1515) as distance
        FROM academia u ) d
        order by distance"
        
        result = ActiveRecord::Base.connection.execute(order_by_distance_query)

        gyms = result.flat_map do |row|
            row['id']
        end
    end
end
