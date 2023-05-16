% Beginning of our ENGG100 Project
% 
% Things we'll need to account for
% 
% Equations to run the simulation and to move the plot
% 
% Use an image on the graph and on the moving plot
% 
% So, new plan, we track the mouse, and maybe, in real time, show the
% possible trajectory, and in mouse click, it'll shoot the "object" onto
% the point


% %%mouse tracking test
% x=1;
% while x~=0
%     loc = get(0, 'PointerLocation');
%     
%     x=1:10;
%     plot(x,x.^2);
% 
%     disp (loc)
%     %// Do something
%     %...
%     %...
% 
%     pause(0.01); %// Pause for 0.01 ms
% end
% 
% %%test 2
% f = figure(); % create figure and get its handle
% ax = axes(); % create axes and get its handle
% xlim([0 20]); % set limits of axes
% ylim([0 20]);
% hold on; % hold the axes so that the xlim and ylim does not change.
% l = line(0, 0); % create an empty line
% l.XData = [];
% l.YData = [];
% while true
%     set(gcf,'WindowButtonMotionFcn');
% 
% end
% % while waitforbuttonpress == 0
% %     point = ax.CurrentPoint(1, 1:2); % get coordinate of current point
% %     l.XData = [l.XData point(1)]; % add the current point to the line l
% %     l.YData = [l.YData point(2)];
% % end
% 
% 
% %%
% f = figure();
% % ax_up = subplot(2, 1, 1);
% % hold(ax_up);
% % ax_up.YLim = [0 2];
% % ax_down = subplot(2, 1, 2);
% % hold(ax_down);
% % ax_down.YLim = [0 2];
% % l = yline(0, 'r');
% % f.WindowButtonMotionFcn = @(fig, eve) btnCb(fig, eve, ax_up, l);
% % function btnCb(~, ~, ax_up, l_h)
% %     y = ax_up.CurrentPoint(1, 2);
% %     if (ax_up.YLim(1) < y) && (y < ax_up.YLim(2))
% %         l_h.Value = y;
% %     end
% % end
% 
% %%more testing
% % Create two axes
% %%
% clf()
% ax(1) = subplot(1,2,1);
% title('Track mouse movement')
% grid on
% ax(2) = subplot(1,2,2);
% title('Follow mouse movement')
% grid on
% linkaxes(ax,'xy') % Equate axis limits
% % Set up crosshairs on each axis at the edges
% gobj(1,1) = xline(ax(1),min(xlim(ax(1))), 'k-');
% gobj(1,2) = yline(ax(1),min(ylim(ax(1))), 'k-');
% gobj(2,1) = xline(ax(2),min(xlim(ax(2))), 'k-');
% gobj(2,2) = yline(ax(2),min(ylim(ax(2))), 'k-');
% hlink(1) = linkprop(gobj(:,1),{'Value','Label'}); % Yoke x lines
% hlink(2) = linkprop(gobj(:,2),{'Value','Label'}); % Yoke y lines
% ax(1).UserData = hlink; % hlink must be stored here so mouseMove() has access to it
% % Assign windowbuttonmotion fcn on axis #1
% set(ax(1).Parent,'windowbuttonmotionfcn', {@mouseMove, ax, gobj});
% % Assign mouse button functions to start/stop tracking
% WindowButtonMotionFcnInput = {@mouseMove, ax, gobj};
% set(ax(1).Parent,'windowbuttondownfcn', {@startStopMouseMove, WindowButtonMotionFcnInput})
% function mouseMove(~, ~, ax, gobj)
% % Responds to mouse movement in axis #1
% % ax is a vector of subplot handles; ax(1) tracks mouse movement, ax(2) follows.
% % gobj(1,1) is xline in ax 1
% % gobj(1,2) is yline in ax 1
% % Get mouse coordinate
% C = ax(1).CurrentPoint;
% x = C(1,1);
% y = C(1,2);
% % If mouse isn't on axis #1, do nothing.
% if x < ax(1).XLim(1) || x > ax(1).XLim(2) || y < ax(1).YLim(1) || y > ax(1).YLim(2)
%     return
% end
% % Update crosshairs (cross hairs in ax 2 are yoked).
% gobj(1,1).Value = x;
% gobj(1,1).Label = x;
% gobj(1,2).Value = y;
% gobj(1,2).Label = y;
% end
% function startStopMouseMove(hobj,~,WindowButtonMotionFcnInput)
% % Turns mouse tracking off (right mouse button) and on (left mouse button)
% buttonID = hobj.SelectionType;
% switch buttonID
%     case 'normal'  %left mouse button
%         % Start interactivity
%         set(hobj,'windowbuttonmotionfcn', WindowButtonMotionFcnInput);
%     case 'alt'     % right mouse button
%         % Stop interactivity
%         set(hobj,'windowbuttonmotionfcn', []);
% end
% end
% %%
% %personal testing
% % f = figure();
% % plot(1:10,1:10);
% % while true
% %     disp (f.WindowButtonMotionFcn)
% %     pause(0.01)
% % end
% 
% 
% %%
% %final-ish shortened code
% %%
% clf()
% ax = subplot(1,2,1);
% title('Track mouse movement')
% grid on
% linkaxes(ax,'xy') 
% ax(1).UserData = hlink; 
% set(ax.Parent,'windowbuttonmotionfcn', {@mouseMove, ax, gobj});
% WindowButtonMotionFcnInput = {@mouseMove, ax, gobj};
% set(ax.Parent,'windowbuttondownfcn', {@startStopMouseMove, WindowButtonMotionFcnInput})
% function mouseMove(~, ~, ax, ~)
% while true
%     C = ax.CurrentPoint;
%     x = C(1,1);
%     y = C(1,2);
%     disp ({x,y});
%     pause(0.1)
% end
%     % If mouse isn't on axis #1, do nothing.
% 
% end


%after extensive checking on the interwebs, I simplified the code to the
%below

%%
clf()
ax = subplot(1,1,1);
title('Track mouse movement')
grid on
linkaxes(ax,'xy') 
ax.UserData = hlink; 
set(ax.Parent,'windowbuttonmotionfcn', {@mouseMove, ax});
WindowButtonMotionFcnInput = {@mouseMove, ax};
set(ax.Parent,'windowbuttondownfcn', {@startStopMouseMove, WindowButtonMotionFcnInput})
function mouseMove(~, ~, ax, ~)
try
    while true
        C = ax.CurrentPoint;
        x = C(1,1);
        y = C(1,2);
        disp ({x,y});
        pause(0.1)
    end
catch
end
end
