using GLMakie

fig = Figure(size = (1000, 720))
ax = Axis(fig[1, 1], 
    xlabel = "X-axis", 
    ylabel = "Y-axis", 
    title = "Test Plot",
    aspect = AxisAspect(1)
)

arrowGrid = [Point2f(x, y) for x in -10:10 for y in -10:10]
arrowDirections = [Vec2f(cos(atan(y, x)), sin(atan(y, x))) for x in -10:10 for y in -10:10]


#Visualising
arrows2d!(ax, arrowGrid, arrowDirections;
)

fig