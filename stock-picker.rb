def stock_picker(stock)
    mainArr = []
    stock.each_with_index {|price,day|
    diffArr = []
        for i in (day..stock.length-1)
            diffArr.push(stock[i] - price)
        end
    mainArr.push([diffArr.max,day,diffArr.index(diffArr.max)+day])
    }
    [mainArr.max[1],mainArr.max[2]]
end

p stock_picker([17,3,6,1,20,8,6,18,10])
