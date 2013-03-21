function [featureLexicon,animalType]= ...
  featureLexiconFromFeatureLexiconName(featureLexiconName)

[featureLexiconNameList, ...
 featureLexiconFileNameList, ...
 featureLexiconAnimalTypeList] = ...
  getFeatureLexiconListsFromXML();
    
indexOfFeatureLexicon= ...
  find(strcmp(featureLexiconName,featureLexiconNameList));
featureLexiconFileName=...
  featureLexiconFileNameList{indexOfFeatureLexicon};
animalType=...
  featureLexiconAnimalTypeList{indexOfFeatureLexicon};

featureLexicon=ReadXMLParams(featureLexiconFileName);

end