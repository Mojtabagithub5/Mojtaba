function MyPlot(GG)
fplot(GG,'k','LineWidth', 1.0);
hold on
grid on
xlim([0,2.5]);
ylim([0,5]);
hold off
ylabel('Amplification Rate $$X\frac{k}{F_{0}}$$','FontUnits','points','interpreter','latex','FontWeight','bold','FontSize',12,'FontName','Times')
xlabel('Frequency Ratio $$r=\frac{f}{f_{n}}$$','FontUnits','points','interpreter','latex','FontSize',12,'FontName','Times','Fontweight','bold')
print -depsc2 Mojtaba_plot.eps
print -dpdf Mojtaba_plot.pdf
hold off
end 

