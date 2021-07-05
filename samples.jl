function samples(x,y,b,h,m,r,dichte)
    tetha = x * pi/h
    phi = y * 2 * pi/b
    
    dx = m[1] + r*sin(tetha)*cos(phi)
    dy = m[2] + r*sin(tetha)*sin(phi)
    dz = m[3] + r*cos(tetha)
    
    return (dx, dy, dz)
    
end