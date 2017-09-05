SELECT 
	'""' as InteractionID,
	'""' as InteractionURL,
	'"' + TAXONCODE + '"' as Species1UUID, 
	'"' + VALGENUS + ' ' + isNull(VALSPECIES, '') + '"' as Species1Name, 
	'""' as Species1LifeCycleStage, 
	'""' as Species1OrganismPart,
	'""' as Species1Status,
	'"is parasite of"' as InteractionType,
	'"http://purl.obolibrary.org/obo/RO_0002444"' as InteractionOntologyURL,
	'"' + HOSNUMBER + '"' as Species2UUID,
	'"' + HOSGENUS + ' ' + isNull(HOSSPECIES, '') + '"' as Species2Name,
	'""' as Species2LifeCycleStage,
	'""' as Species2OrganismPart,
	'""' as Species2Status,
	'""' as LocationUUID,
	'""' as LocationName,
	'""' as LocationCountryName,
	'""' as ISO2,
	'""' as Importance,
	'""' as InteractionRecordType,
	'"' + isNull(REFCODE, '') + ' via Universal Chalcidoidea Database"' as Reference,
	'""' as ReferenceDOI,
	'"' + isNull(PAGEREF, '') + '"' as ReferencePage,
	'""' as Notes 
from tblAllHostReports
WHERE 
	VALGENUS <> ''
AND
	HOSGENUS <> '';
	