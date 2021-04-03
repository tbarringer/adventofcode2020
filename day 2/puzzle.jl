using StatsBase

function puzz1()

open("day 2/input.txt") do f
  
    # line_number
    line = 0
    counter = 0
    
    # read till end of file
    while ! eof(f)  
       # read a new / next line for every iteration           
       s = readline(f)
       splits = split(s," ")
    #    println(splits) 
       nums = split(splits[1],"-")   
       start = nums[1]
        last = nums[2]
        start = parse(Int64, start)
        last = parse(Int64, last)

        chars = countmap(c for c in splits[3])
        check_char = splits[2][1]
        # println(check_char)
        # println(chars)
        try
            check_val = chars[check_char]
            if check_val >= start && check_val <= last
                counter += 1
            end
        catch
            check_val = 0
            if check_val >= start && check_val <= last
                counter += 1
            end
        end
        # println(check_val)
        
    end
    println(counter)
    return counter
  end
end

function puzz2()

    open("day 2/input.txt") do f
      
        # line_number
        line = 0
        counter = 0
        
        # read till end of file
        while ! eof(f)  
           # read a new / next line for every iteration           
           s = readline(f)
           splits = split(s," ")
        #    println(splits) 
           nums = split(splits[1],"-")   
           start = nums[1]
            last = nums[2]
            start = parse(Int64, start)
            last = parse(Int64, last)
            # println(splits[3])
            if splits[2][1] == splits[3][start] && splits[2][1] == splits[3][last]
                counter += 0
            elseif splits[2][1] == splits[3][start] || splits[2][1] == splits[3][last]
                counter += 1
            end
        end
        println(counter)
        return counter
    end
end

puzz2()