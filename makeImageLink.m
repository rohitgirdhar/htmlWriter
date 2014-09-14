%Author: Ishan Misra (ishan@cmu.edu)
%Date: Dec, 2013

function linkStr = makeImageLink(imgPath,width,altText,borderString)
if(~exist('altText','var'))
    linkStr=sprintf('<a href="%s"><img src="%s" width=%d /></a>',imgPath,imgPath,width);
else
    if(~exist('borderString','var'))
        linkStr=sprintf('<a href="%s"><img src="%s" width=%d Title="%s"/></a>',imgPath,imgPath,width,altText);
    else
        linkStr=sprintf('<a href="%s"><img src="%s" width=%d Title="%s" style="%s"/></a>',...
            imgPath,imgPath,width,altText,borderString);
    end
end
