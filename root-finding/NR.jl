let

f(x) = x^2 - 5*x + 6
fp(x) = 2*x - 5

ϵ = 0.0001

conv = false

x0 = 1
xi = 1
xip1 = 1


i = 1

println("i xi f1 fp1 xip1 error")

while conv != true
    
    f1 = f(xi)
    fp1 = fp(xi)

    xip1 = xi - f1/fp1

    error = abs(xip1 - xi)/xip1

    println("$i $xi $f1 $fp1 $xip1 $error")
    if(error < ϵ)
        println("CONVERGED")
        println("ROOT VALUE : $xip1")
        conv = true
        break
    end
    
    xi = xip1
    i += 1

end
end
