let

f(x) = x^2 - 5*x + 6
xim1 = 0
xi = 1
xip1 = 1

i = 1

ϵ = 0.00001

conv = false


println("i xim1 xi f(xi) f'(xi) xip1 error")

while conv != true
    
    f1 = f(xi)
    fm1 = f(xim1)
    
    fp = (f(xi) - f(xim1))/(xi - xim1)

    xip1 = xi - f1/fp

    error = abs(xip1 - xi)/xip1

    println("$i $xim1 $xi $f1 $fp $xip1 $error")

    if(error < ϵ)
        println("CONVERGED")
        println("ROOT : $xip1")
        conv = true
        break
    end

    xim1 = xi 
    xi = xip1


    i = i+1

end




end
