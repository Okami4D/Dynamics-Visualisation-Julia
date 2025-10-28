using GLMakie

f = Figure()
ax = Axis(f[1, 1], title="Test Plot")
lines!(ax, 0:0.1:10, sin)
f
save("visualisations/test_plot.png", f)
