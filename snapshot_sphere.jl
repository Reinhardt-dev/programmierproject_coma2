include("samples.jl")
include("is_visible.jl")


function snapshot_sphere(b,h,daten,m,r,dichte)
    pic = initial_pic()
    return pic
    println(typeof(daten))
    points = []
    for i=1:h
        for j=1:b
            p = samples(j,i, b,h, m, r, dichte)
            if is_visible(p, m ,r)
                camera = abbild(p)
                x = camera[1] + 251
                y = camera[2] + 251
                
                d = daten[i*j]
                pic[x][y] = d
            end
        end
    end
    return pic
end

function initial_pic()
    pic = []
    for i=1:500
        row = []
        for j=1:500
            push!(row, [255, 255, 255])
        end
        push!(pic, row)
    end
    return pic
end


