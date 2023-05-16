%%
clf()
ax = subplot(1,1,1);
title('Track mouse movement')
grid on
linkaxes(ax,'x') 
ax(1).UserData = hlink; 
set(ax.Parent,'windowbuttonmotionfcn', {@mouseMove, ax, gobj});
WindowButtonMotionFcnInput = {@mouseMove, ax, gobj};
set(ax.Parent,'windowbuttondownfcn', {@startStopMouseMove, WindowButtonMotionFcnInput})
function mouseMove(~, ~, ax, ~)
while true
    C = ax.CurrentPoint;
    x = C(1,1);
    y = C(1,2);
    disp ({x,y});
    pause(0.1)
end
end


% %%
% clf()
% ax = subplot(1,2,1);
% title('Track mouse movement')
% grid on
% % ax(2) = subplot(1,2,2);
% % title('Follow mouse movement')
% % grid on
% linkaxes(ax,'xy') % Equate axis limits
% % Set up crosshairs on each axis at the edges
% % gobj(1,1) = xline(ax(1),min(xlim(ax(1))), 'k-');
% % gobj(1,2) = yline(ax(1),min(ylim(ax(1))), 'k-');
% % gobj(2,1) = xline(ax(2),min(xlim(ax(2))), 'k-');
% % gobj(2,2) = yline(ax(2),min(ylim(ax(2))), 'k-');
% % hlink(1) = linkprop(gobj(:,1),{'Value','Label'}); % Yoke x lines
% % hlink(2) = linkprop(gobj(:,2),{'Value','Label'}); % Yoke y lines
% ax(1).UserData = hlink; % hlink must be stored here so mouseMove() has access to it
% % Assign windowbuttonmotion fcn on axis #1
% set(ax.Parent,'windowbuttonmotionfcn', {@mouseMove, ax, gobj});
% % Assign mouse button functions to start/stop tracking
% WindowButtonMotionFcnInput = {@mouseMove, ax, gobj};
% set(ax.Parent,'windowbuttondownfcn', {@startStopMouseMove, WindowButtonMotionFcnInput})
% function mouseMove(~, ~, ax, ~)
% % Responds to mouse movement in axis #1
% % ax is a vector of subplot handles; ax(1) tracks mouse movement, ax(2) follows.
% % gobj(1,1) is xline in ax 1
% % gobj(1,2) is yline in ax 1
% % Get mouse coordinate
% % if x < ax(1).XLim(1) || x > ax(1).XLim(2) || y < ax(1).YLim(1) || y > ax(1).YLim(2)
% %     return
% % end
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
% % Update crosshairs (cross hairs in ax 2 are yoked).
% % gobj(1,1).Value = x;
% % gobj(1,1).Label = x;
% % gobj(1,2).Value = y;
% % gobj(1,2).Label = y;
% % end
% % function startStopMouseMove(hobj,~,WindowButtonMotionFcnInput)
% % % Turns mouse tracking off (right mouse button) and on (left mouse button)
% % buttonID = hobj.SelectionType;
% % switch buttonID
% %     case 'normal'  %left mouse button
% %         % Start interactivity
% %         set(hobj,'windowbuttonmotionfcn', WindowButtonMotionFcnInput);
% %     case 'alt'     % right mouse button
% %         % Stop interactivity
% %         set(hobj,'windowbuttonmotionfcn', []);
% % end
% % end