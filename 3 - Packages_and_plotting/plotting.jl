Pkg.add("Plots")
using Plots

globaltemperatures = [14.4, 14.5, 14.8, 15.2, 15.5, 15.8]
numpirates = [45000, 20000, 15000, 5000, 400, 17];

gr()


# The `!` at the end of the `scatter!` function name makes `scatter!` a mutating function, indicating that the scattered points will be added onto the pre-existing plot.
# In contrast, see what happens when you replace `scatter!` in the above with the non-mutating function `scatter`.
# Next, let's update this plot with the `xlabel!`, `ylabel!`, and `title!` commands to add more information to our plot.


plot(numpirates, globaltemperatures, label="line")  
scatter!(numpirates, globaltemperatures, label="points") 


xlabel!("Number of Pirates [Approximate]")
ylabel!("Global Temperature (C)")
title!("Influence of pirate population on global warming")

xflip!()


Pkg.add("UnicodePlots")
unicodeplots()

plot(numpirates, globaltemperatures, label="line")  
scatter!(numpirates, globaltemperatures, label="points") 
xlabel!("Number of Pirates [Approximate]")
ylabel!("Global Temperature (C)")
title!("Influence of pirate population on global warming")


x = -3:0.1:3
f(x) = x^2
y = f.(x)

gr()

plot(x,y,label = "line")
scatter!(x,y, label ="points")

Pkg.add("PlotlyJS")
plotlyjs()
plot(x,y,label = "line")
scatter!(x,y, label ="points")


p1 = plot(x, x)
p2 = plot(x, x.^2)
p3 = plot(x, x.^3)
p4 = plot(x, x.^4)

plot(p1,p2,p3,p4, layout = (2,2), legend = false)

# create a 2x2 grid, and map each of the 4 series to one of the subplots
plot(rand(100, 4), layout = 4)
# create a 4x1 grid, and map each of the 4 series to one of the subplots
plot(rand(100, 4), layout = (4, 1))

l = @layout [
    a{0.3w} [grid(3,3)
             b{0.2h}  ]
]
plot(
    rand(10, 11),
    layout = l, legend = false, seriestype = [:bar :scatter :path],
    title = ["($i)" for j in 1:1, i in 1:11], titleloc = :right, titlefont = font(8)
)

# boxplot is defined in StatsPlots
Pkg.add("StatsPlots")
using StatsPlots, StatsPlots.PlotMeasures
gr(leg = false, bg = :lightgrey)

# Create a filled contour and boxplot side by side.
plot(contourf(randn(10, 20)), boxplot(rand(1:4, 1000), randn(1000)))

# Add a histogram inset on the heatmap.
# We set the (optional) position relative to bottom-right of the 1st subplot.
# The call is `bbox(x, y, width, height, origin...)`, where numbers are treated as
# "percent of parent".
histogram!(
    randn(1000),
    inset = (1, bbox(0.05, 0.05, 0.5, 0.25, :bottom, :right)),
    ticks = nothing,
    subplot = 3,
    bg_inside = nothing
)

# Add sticks floating in the window (inset relative to the window, as opposed to being
# relative to a subplot)
sticks!(
    randn(100),
    inset = bbox(0, -0.2, 200px, 100px, :center),
    ticks = nothing,
    subplot = 4
)

#Exercises
# Given
# x = 
# plot y vs. x for $y = x^2$.  You may want to change backends back again.
x = -10:10
f(x) = x^2
y = f.(x)
gr()
plot(x,y,label = "line")
scatter!(x,y, label ="points")


# Create a $4x1$ plot that uses `p1`, `p2`, `p3`, and `p4` as subplots.
p1 = plot(x, x)
p2 = plot(x, x.^2)
p3 = plot(x, x.^3)
p4 = plot(x, x.^4)
plot(p1, p2, p3, p4, layout = (2, 2), legend = false)