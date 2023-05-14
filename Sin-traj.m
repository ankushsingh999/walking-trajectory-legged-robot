% taking values at 0.01
function question2
for beta = 0:0.05:1
    v_t = [0:0.05:5]
    u_t = (beta/(1-beta))*v_t;
    hold on
    plot(v_t,u_t)
    xlabel('Velocity of the Body')
    ylabel('Velocity of the foot')

end