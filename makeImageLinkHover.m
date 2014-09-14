%Author: Ishan Misra (ishan@cmu.edu)
%Date: Dec, 2013

function linkStr = makeImageLinkHover(imgPath1,imgPath2,width,params)
if(~exist('params','var'))
    linkStr=sprintf('<div><a href="%s"><img src="%s" width=%d onmouseover="this.src=''%s''" onmouseout="this.src=''%s''" /></a>',imgPath1,imgPath1,width,imgPath2,imgPath1);
else
    if isfield(params, 'hover_width')
        hover_width = params.hover_width;
    else
        hover_width = width;
    end
    if(isfield(params,'bbox') && params.bbox)
        linkStr=sprintf('<a href="%s"><img src="%s" width=%d /></a>',imgPath,imgPath,width);
    else
        linkStr=sprintf('<div style="position: relative; left: 0; top: 0;"><a href="%s"><img src="%s" width=%d onmouseover="this.src=''%s''; this.width=''%d''" onmouseout="this.src=''%s''; this.width=''%d''" style="position: relative; top: 0; left: 0;" /></a>',imgPath1,imgPath1,width,imgPath2,hover_width,imgPath1,width);
        if (isfield(params, 'check') && params.check)
            linkStr = [linkStr, sprintf('<img src="static/check.png" style="position: absolute; bottom: -5px; right: -5px; width: %d;" />', width / 5)];
        end
        linkStr = [linkStr, '</div>'];
    end
end
