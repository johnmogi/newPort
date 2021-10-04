basic down to earth mysql server +
front nextJs

db:

workPortfolio 
works collection
workID (pk)
workCatID (FK)
workName 
workDescription
workDate
workTag

workCat collection
workCatID (pk)
workCatName 

blog collection
postID (pk)
catID (fk)
postName
postDescription
thumbnail
postDate

cats collection
catID (pk)
catName

clients collection
clientID (pk)
clientLogo

leads Collection
leadID (pk)
leadName
leadPhone
leadMail
leadSite
contactDate
follow



INSERT INTO `workcat` (`workCatID`, `workCatName`) VALUES (NULL, 'sites');

INSERT INTO `works` (`workID`, `workCatID`, `workName`, `workDescription`, `workDate`, `workTag`) VALUES (NULL, '1', 'emesh', 'emesh nadlan is an elementor site', '2020-10-07 17:02:04.000000', 'elementor, wordpress');

INSERT INTO `cats` (`catID`, `catName`) VALUES (NULL, 'code');

INSERT INTO `blog` (`postID`, `postName`, `postDescription`, `thumbnail`, `postDate`, `catID`) VALUES (NULL, 'hot to deploy', 'I had a rough time realising being a full stack without having a single idea on how to actually deploy is a recepie for disaster....', 'devops1.jpg', '2021-10-04 17:07:07.000000', '1');

INSERT INTO `clients` (`clientID`, `clientLogo`) VALUES (NULL, 'wisy.jpg');

    INSERT INTO `leads` (`leadID`, `leadName`, `leadPhone`, `leadMail`, `leadSite`, `contactDate`, `follow`) VALUES (NULL, 'tester', '050-9382456', 'anguru@gmail.com', 'https://johnmogi.com', '2021-10-04 17:09:11.000000', '1');