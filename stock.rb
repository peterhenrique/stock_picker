require 'pry-byebug'


def stock_picker (array)
    
    best_sells_index = []
    best_sells = []

    i = 0
    while i < array.length do
        j = 0
        while j < array.length do 
            if j > i && array[j] - array[i] > 0
                best_sells_index.push ([i,j])
                best_sells.push ([array[j] - array[i]])
            end 
            j += 1

        end 

        i += 1
    end 



    p "best_sells = #{best_sells}"
    p "best_sells_index = #{best_sells_index}"
    l =  best_sells.rindex(best_sells.max)

    p "the best day to buy is #{best_sells_index[l][0]} and the best day to sell is #{best_sells_index[l][1]} for a $ #{best_sells.flatten[l]} profit" 


 

end 

stock_picker([17,3,6,9,15,8,6,1,10])

stock_picker([17,3,6,9,15,8,123,1,10])

