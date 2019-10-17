# Exercise #6: Algorithm Development

class Aircraft
    def initialize(xval=0,yval=0)
        @x=xval
        @y=yval
    end
    def move_left
        puts("Moved Left..")
        @x-=1
    end
    def move_right
        puts("Moved Right..")
        @x+=1
    end
    def move_up
        @y+=1
        puts("Moved Up..")
    end
    def move_down
        puts("Moved Down..")
        @y-=1
    end

    instances=["instance1", "instance2", "instance3", "instance4", "instance5"]
    def instance_create
        for i in 0..instances.size-1
            if i==0
                instances[i] = Aircraft(0,0)
            end
            if i==1
                instances[i] = Aircraft(3,6)
            end
            if i==2
                instances[i] = Aircraft(6,12)
            end
            if i==3
                instances[i] = Aircraft(9,18)
            end
            if i==4
                instances[i] = Aircraft(12,24)
            end
        end
    end
    def final_x_y_coord
            print("Final X-Coord:") 
            puts(instance_variable_get(:@x))
            print("Final Y-Coord: ") 
            puts(instance_variable_get(:@y))
    end
    def initial_x_y_coord
        print("Initial X-Coord:") 
        puts(instance_variable_get(:@x))
        print("Initial Y-Coord: ") 
        puts(instance_variable_get(:@y))
    end
    def directions
        move_right()
        move_right()
        move_up()
        move_right()
        move_left()
        move_up()
        move_up()
        move_down()
        move_up()
        move_down()
        move_up()
    end
end

# class Boeing_747 is inheriting from class Aircraft
class Boeing_747 < Aircraft
    def initialize(xval,yval,x_d,y_d)
        @x=xval
        @y=yval
        @x_d=x_d
        @y_d=y_d
    end
    instances=["instance1", "instance2", "instance3", "instance4", "instance5"]
    for i in 0..instances.size-1
        if i==0
            instances[i] = Boeing_747.new(5,8,51,60)
        end
        if i==1
            instances[i] = Boeing_747.new(10,15,59,48)
        end
        if i==2
            instances[i] = Boeing_747.new(3,12,57,49)
        end
        if i==3
            instances[i] = Boeing_747.new(11,15,67,60)
        end
        if i==4
            instances[i] = Boeing_747.new(12,17,50,62)
        end
        puts("Creating New Aircraft Object: #{i}")
        puts("New Aircraft Object Has Just Been Initalized: #{i}")
        instances[i].initial_x_y_coord
        puts("New Boeing 747 Object Has Just Been Initalized: #{i}")
        print("X-Coord:") 
        puts(instances[i].instance_variable_get(:@x_d))
        print("Y-Coord: ") 
        puts(instances[i].instance_variable_get(:@y_d))
    end
    for i in 0..instances.size-1
        puts("\nAircraft [#{i}]")
        instances[i].final_x_y_coord
    end   
    for i in 0..instances.size-1
        puts("\nAircraft ",i)
        puts("Starting from: (#{instances[i].instance_variable_get(:@x)},#{instances[i].instance_variable_get(:@y)})")
        puts("Headed to: (#{instances[i].instance_variable_get(:@x_d)},#{instances[i].instance_variable_get(:@y_d)})")
        m=(instances[i].instance_variable_get(:@y_d)-instances[i].instance_variable_get(:@y))/
                                (instances[i].instance_variable_get(:@x_d)-instances[i].instance_variable_get(:@x)).to_f
        b=instances[i].instance_variable_get(:@y)-m*instances[i].instance_variable_get(:@x).to_f
        for j in instances[i].instance_variable_get(:@x)..instances[i].instance_variable_get(:@x_d)+1
            y=m*j+b
            if(y<=instances[i].instance_variable_get(:@y_d))
                puts("#{j},#{y}")
            end
        end
        puts("We have arrived")
        puts("Acceleration Constant: 1")
    end
end
