function cmap=colourFriendlyMaps(map1,varargin)
% cmap = =colourFriendlyMaps(map1,varargin)
% Create colour-blind-friendly colour schemes for graphs
% To use, simply enter colour names you wish to stitch together for 
% your colour map
% Example: cmap = colourFriendlyMaps('black','orange');
% % Potential colour scheme names are as follows:
% -----
% black, orange, skyBlue, yellow, blue, vermillion, reddishPurple
% -----
% Colour schemes are derived from https://jfly.uni-koeln.de/color/
% Patrick Cooper, November, 2019


if nargin == 1
    %only one map selected
    mapNames = {map1};
else
    mapNames = [map1 varargin];
end
cmap=zeros(length(mapNames),3);
for map_i = 1:length(mapNames)
    currentMapName = lower(mapNames{map_i});%ensure all lowercase, in case of accidental capitalisation
    switch currentMapName
        case 'black'
            map = [0 0 0];
        case 'orange'
            map = [230 159 0];
        case 'skyblue'
            map = [86 180 233];
        case 'bluishgreen'
            map = [0 158 115];
        case 'yellow'
            map = [240 228 66];
        case 'blue'
            map = [0 114 178];
        case 'vermillion'
            map = [213 94 0];
        case 'reddishpurple'
            map = [204 121 167];
    end
          cmap(map_i,:)=map;
end
cmap = cmap./256;
end