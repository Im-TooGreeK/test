local function main(...)
    local encodedStrings = {
        "\075\090\068\087\108\089\117\116\102\115\117\097\051\108\069\076",
        "\098\076\088\050\122\076\083\061",
        "\111\076\087\050\098\100\113\068\111\108\049\118\065\107\069\114\088\055\121\061",
        "\097\083\061\061",
        "\108\114\113\113\048\120\069\101\102\119\098\090\108\089\055\103\108\086\061\061",
        "\122\102\088\075\088\076\052\087\097\114\088\053\106\108\071\099\075\110\049\061",
        "\051\118\050\121\069\089\098\115\065\079\055\069\069\108\052\071",
        "\051\107\073\087\088\118\088\054\097\108\050\053\085\090\049\112\108\107\073\061",
        "\114\090\075\085\111\102\104\112\098\105\069\087\098\105\113\108",
        "\098\099\069\056\085\108\112\079",
        "\068\089\051\054\085\120\077\083\051\049\075\102\110\119\117\088\114\114\114\061",
        "\122\108\055\120\085\086\061\061",
        "\075\105\087\078\122\099\043\061",
        "\076\086\061\061",
        "\051\105\071\050\114\099\110\078\051\110\089\103\075\119\117\103",
        "\075\055\048\116\088\108\052\090\085\114\113\088\075\115\069\081\106\086\061\061",
        "\122\081\049\061",
        "\087\068\061\061",
        "\075\119\113\056\122\099\043\061",
        "\048\090\110\080\102\079\098\083\122\079\050\080\051\049\121\116\075\114\083\061",
        "\098\105\110\071\122\099\075\089",
        "\110\108\077\084\102\102\050\112\102\108\118\107\098\076\110\078\048\086\061\061",
        "\122\081\043\061",
        "\088\102\069\117\098\119\075\110\114\089\113\112\069\107\052\082\069\086\061\061",
        "\108\055\075\118\114\079\043\087\069\120\112\048\102\110\110\079\111\104\061\061",
        "\069\105\069\090\106\081\110\097\085\107\087\054\051\120\075\121\068\104\061\061",
        "\051\076\052\103\051\108\118\080\075\119\043\061",
        "\106\107\055\053\098\076\075\118\102\119\051\116\114\099\086\112\106\086\061\061",
        "\051\076\055\080\122\076\114\061",
        "\110\107\050\084\110\100\065\090\102\108\077\079\098\114\113\118",
        "\068\105\073\116\048\105\089\088\114\076\071\077\108\049\051\070",
        "\088\099\069\090\069\049\098\056\102\090\089\107\122\115\050\113",
        "\097\053\070\056\115\086\061\061",
        "\051\076\052\115\051\109\113\077\122\105\098\061",
        "\065\090\050\050\098\104\061\061",
        "\065\079\089\120\075\068\061\061",
        "\119\118\052\053\075\108\116\061",
        "\114\100\055\088\065\119\069\084\075\109\050\108\110\076\110\069",
        "\122\102\048\090\069\076\069\116\111\081\048\099\098\108\077\088",
        "\078\068\061\061",
        "\097\119\089\121\111\114\087\048\069\107\118\076\111\114\087\069",
        "\110\066\051\056\106\083\061\061",
        "\069\115\050\082\108\109\113\065\048\076\077\078\048\118\077\099\048\120\065\061",
        "\054\088\101\097\114\083\061\061",
        "\088\107\052\106\088\114\075\097\110\108\121\056\068\107\088\105",
        "\112\067\072\119\117\104\061\061",
        "\051\108\113\114\085\114\050\090\108\105\075\109\051\118\088\116\102\089\048\061",
        "", 
        "\107\106\090\072\080\116\117\066",
        "\065\119\088\115\075\119\113\120",
        "\098\090\110\120\122\108\110\120\065\119\069\050\065\105\087\089",
        "\097\080\104\089\075\047\121\077\097\104\061\061",
        "\110\076\055\071\098\076\110\056\043\049\069\089\051\076\110\100\051\076\110\107\043\068\061\061",
        "\088\120\052\120\075\109\049\112\051\107\107\087\102\120\110\107\051\104\061\061",
        "\102\108\073\083\088\107\110\047\106\114\077\108\110\110\050\119",
        "\106\090\075\106\098\089\069\102\108\079\048\083\106\109\055\075\102\114\098\061",
        "\114\105\088\097\065\108\087\103\088\114\089\088\068\115\110\043\065\102\048\061",
        "\119\118\052\071\075\119\069\050\051\076\055\080\122\076\114\061",
        "\102\119\077\081\098\108\089\077\102\049\055\090\111\107\120\120",
        "\075\090\116\099\048\089\075\080\069\081\089\049\075\049\075\100",
        "\097\076\087\055\098\118\051\048\085\055\077\079\106\049\051\077\085\086\061\061",
        "\122\109\088\121\085\108\075\120",
        "\085\049\053\099\111\049\113\121\110\114\113\120\051\107\114\056\111\086\061\061",
        "\069\099\049\090\108\107\077\056\114\079\077\089\085\049\118\117\069\120\114\061",
        "\078\084\071\108",
        "\112\104\061\061",
        "\089\081\076\120\110\082\114\061",
        "\119\118\052\079\065\083\061\061",
        "\106\115\088\081\111\100\107\116\097\049\118\108\122\089\089\043\097\086\061\061",
        "\098\105\055\103\075\076\052\071",
        "\098\112\072\072\068\106\051\050",
        "\051\110\088\102\097\114\055\103\097\076\069\117\110\108\112\069\088\120\065\061",
        "\065\090\052\103\065\090\055\120",
        "\122\108\069\084\106\120\113\047\111\110\055\120\102\081\088\050\114\068\061\061",
        "\075\090\118\050\051\076\088\121",
        "\075\089\088\083\068\119\113\109\075\076\075\108\048\108\075\100\048\104\061\061",
        "\051\105\089\097\110\110\089\119\108\086\061\061",
        "\097\104\061\061",
        "\051\108\112\083\065\108\088\082",
        "\106\089\089\065\075\107\110\043\122\109\089\088\122\110\088\075\108\107\114\061",
        "\097\109\069\103\069\076\077\056\097\049\110\097\085\102\110\054\106\068\061\061",
        "\102\055\077\065\102\049\088\090\048\076\051\076\075\109\055\087",
        "\111\105\055\087\048\049\112\071\068\115\075\079\085\120\104\099\122\083\061\061",
        "\085\107\114\083\114\076\051\085\075\105\055\110\111\108\088\047",
        "\119\118\052\077\122\105\069\089\111\086\061\061",
        "\122\076\110\103",
        "\065\105\089\120\048\115\113\057\065\105\055\103\075\086\061\061",
        "\075\099\088\118\065\104\061\061",
        "\072\109\103\073\121\083\061\061",
        "\069\108\049\056\075\108\114\120\122\090\113\087\068\110\089\112",
        "\065\118\113\088\051\076\087\097\048\055\050\089\068\090\118\075"
    }

    -- Функция для получения значения из закодированной строки
    local function getEncodedValue(index)
        return encodedStrings[index + (575304 - 547185)]
    end

    -- Основная логика
    for i, value in ipairs({
        {905404 - 905403, -606296 - (-606387)},
        {-706102 + 706103, -553713 + 553749},
        {903713 - 903676, 799380 - 799289}
    }) do
        while value[1] < value[2] do
            encodedStrings[value[1]], encodedStrings[value[2]], value[1], value[2] =
                encodedStrings[value[1]], encodedStrings[value[2]], value[1] + (810618 - 810617),
                value[2] - (-863035 + 863036)
        end
    end

    -- Создание таблицы с переменными
    local variables = {
        J = 288873 - 288814,
        d = -837847 - (-837882),
        A = 191038 - 191014,
        e = 135524 - 135482,
        H = 926843 - 926781,
        m = 64809 - 64802,
        z = 886230 - 886203,
        ["\050"] = -737335 + 737368,
        q = 1003144 - 1003135,
        V = 210727 - 210727,
        w = -552602 - (-552625),
        ["\043"] = -624683 - (-624691),
        ["\054"] = -1017201 - (-1017216),
        r = -324054 - (-324074),
        O = 446702 - 446663,
        ["\051"] = -652916 + 652945,
        ["\057"] = -148325 + 148356,
        F = 23649 - 23591,
        o = 1012159 - 1012129,
        y = 941541 - 941501,
        Z = 614633 - 614579,
        ["\053"] = 4256 - 4212,
        L = -119326 - (-119332),
        ["\056"] = -187558 + 187608,
        S = 636452 - 636404,
        U = 681551 - 681525,
        ["\049"] = -1244 - (-1248),
        ["\047"] = 642548 - 642546,
        Y = -334405 - (-334442),
        C = 386668 - 386605,
        l = -504410 - (-504432),
        D = -401436 - (-401452),
        g = -139702 - (-139748),
        E = 803018 - 803001,
        N = 452445 - 452398,
        K = -30280 - (-30305),
        ["\052"] = -177577 - (-177638),
        n = 388673 - 388652,
        t = 932349 - 932293,
        Q = -27233 + 27236,
        c = -943485 + 943540,
        G = 632308 - 632263,
        X = -305129 + 305142,
        s = -285046 - (-285097),
        W = 860091 - 860042,
        f = -744548 - (-744567),
        i = 30151 - 30113,
        P = -147109 + 147143,
        v = 602472 - 602419,
        b = 48125 - 48097,
        M = 194790 - 194749,
        T = -905596 + 905606,
        R = -169786 - (-169829),
        j = 868429 - 868411,
        u = 924733 - 924732,
        B = 828410 - 828399,
        a = -399148 + 399162,
        p = -18920 - (-18977),
        ["\055"] = 728636 - 728631,
        I = 377512 - 377452,
        ["\048"] = 899260 - 899248,
        k = -960126 + 960162,
        h = -1047840 - (-1047872),
        x = 910256 - 910204
    }

    -- Основная логика обработки
    local stringType = type
    local tableInsert = table.insert
    local stringLength = string.len
    local tableConcat = table.concat
    local stringChar = string.char
    local stringSub = string.sub
    local mathFloor = math.floor

    for index = -906811 - (-906812), #encodedStrings, 947390 - 947389 do
        local currentValue = encodedStrings[index]
        if stringType(currentValue) == "string" then
            local currentLength = stringLength(currentValue)
            local resultList = {}
            local currentIndex = 1
            local resultAccumulator = 0
            local counter = 0
            
            while currentIndex <= currentLength do
                local char = stringSub(currentValue, currentIndex, currentIndex)
                local encodedValue = getEncodedValue(char)
                
                if encodedValue then
                    resultAccumulator = resultAccumulator + encodedValue * (2 ^ (counter))
                    counter = counter + 1
                    
                    if counter == 3 then
                        counter = 0
                        local floorValue = mathFloor(resultAccumulator / 256)
                        local modValue = mathFloor((resultAccumulator % 256) / 256)
                        local lastValue = resultAccumulator % 256
                        tableInsert(resultList, stringChar(floorValue, modValue, lastValue))
                        resultAccumulator = 0
                    end
                elseif char == "=" then
                    tableInsert(resultList, stringChar(mathFloor(resultAccumulator / 256)))
                    if currentIndex >= currentLength or stringSub(currentValue, currentIndex + 1, currentIndex + 1) ~= "=" then
                        tableInsert(resultList, stringChar(mathFloor((resultAccumulator % (256)) / (256))))
                    end
                    break
                end
                
                currentIndex = currentIndex + 1
            end
            
            encodedStrings[index] = tableConcat(resultList)
        end
    end

    return function(...)

    end
end

return main(...)

Найти еще