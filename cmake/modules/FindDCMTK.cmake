#IF (DCMTK_INCLUDE_DIR AND DCMTK_LIBRARIES )
#
#	SET(DCMTK_FOUND TRUE)
#	MESSAGE(STATUS "Found DCMTK-SR: ${DCMTK_LIBRARIES}" )
#
#ELSE (DCMTK_INCLUDE_DIR AND DCMTK_LIBRARIES)


	FIND_PATH(DCMTK_INCLUDE_DIR NAMES dcmtk PATH /usr/include /usr/local/include)

	FIND_LIBRARY(DCMSR_LIBRARY NAMES dcmsr)
	FIND_LIBRARY(DCMDATA_LIBRARY NAMES dcmdata)
	FIND_LIBRARY(OFSTD_LIBRARY NAMES ofstd)

	#MESSAGE(STATUS "Found DCMTK-SR: ${DCMSR_LIBRARY} ${DCMDATA_LIBRARY} ${OFSTD_LIBRARY}" )

	IF(DCMSR_LIBRARY AND DCMDATA_LIBRARY AND OFSTD_LIBRARY AND DCMTK_INCLUDE_DIR)
		SET(DCMTK_FOUND TRUE)
		#set(DCMTK_LIBS ${DCMSR_LIBRARY} ${DCMDATA_LIBRARY} ${OFSTD_LIBRARY})
		set(DCMTK_LIBRARIES ${DCMSR_LIBRARY} ${DCMDATA_LIBRARY} ${OFSTD_LIBRARY} )#CACHE STRINGS "Libraries needed for DICOM Structured Report KWord filter")
		MESSAGE(STATUS "Found DCMTK: ${DCMTK_LIBRARIES}" )
	ENDIF(DCMSR_LIBRARY AND DCMDATA_LIBRARY AND OFSTD_LIBRARY AND DCMTK_INCLUDE_DIR)

#ENDIF (DCMTK_INCLUDE_DIR AND DCMTK_LIBRARIES )

