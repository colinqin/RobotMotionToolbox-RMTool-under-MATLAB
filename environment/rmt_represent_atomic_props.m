%    This is part of RMTool - Robot Motion Toolbox, for Matlab 2010b or newer.
%
%    Copyright (C) 2016 RMTool developing team. For people, details and citing 
%    information, please see: http://webdiis.unizar.es/RMTool/index.html.
%
%    This program is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%    (at your option) any later version.
%
%    This program is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%    along with this program.  If not, see <http://www.gnu.org/licenses/>.

%% ============================================================================
%   MOBILE ROBOT TOOLBOX
%   Graphical User Interface
%   First version released on September, 2014. 
%   Last modification December 29, 2015.
%   More information: http://webdiis.unizar.es/RMTool
% ============================================================================

function [at_pr_h] = rmt_represent_atomic_props(C,propositions)
%atomic propositions are unions (sets) of cells from partition


%represent cells
for i=1:length(C)
    fill(C{i}(1,:),C{i}(2,:),'w','FaceAlpha',0);
end
%write cell numbers
 for i=1:length(C)
     centr=mean(C{i},2)';
     text(centr(1),centr(2),sprintf('p_{%d}',i),'HorizontalAlignment','center','Color','k');
 end

at_pr_h=cell(1,length(propositions));   %handles for each atomic prop
%represent atomic propositions
colors=['r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c','m','k','r','b','g','c'];

%To BE REMOVED!!!!!!!!
%colors = ['k','k','k','k','k','k','k','k','k','k','b','b','b','b','b','b','b','b','b','b'];
%================================

for i=1:length(propositions)
    at_pr_h{i}=zeros(1,length(propositions{i}));
    for j=1:length(propositions{i})
        cell_ind=propositions{i}(j);    %index of current cell
        at_pr_h{i}(j) = fill(C{cell_ind}(1,:),C{cell_ind}(2,:),colors(i),'LineStyle','-.','FaceAlpha',0.4,'EdgeColor',colors(i));
%         fill(C{cell_ind}(1,:),C{cell_ind}(2,:),colors(i),'EdgeColor',colors(i));
        
         centr=mean(C{cell_ind},2)';
        % text(centr(1),centr(2),sprintf('\\Pi_{%d}',i),'HorizontalAlignment','center','Color','k','BackgroundColor',[.7 .7 .7]);
    end
end
set(gca,'Box','on');
set(gca,'XTick',0:2:16,'YTick',0:2:10);
% set(gca,'XTick',[],'YTick',[]);