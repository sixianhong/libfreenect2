FUNCTION(GENERATE_RESOURCES OUTPUT BASE_FOLDER)

ADD_EXECUTABLE(generate_resources_tool
  src/generate_resources.cpp
)

ADD_CUSTOM_COMMAND(
  OUTPUT ${OUTPUT}
  COMMAND generate_resources_tool ${BASE_FOLDER} ${ARGN} > ${OUTPUT}
  WORKING_DIRECTORY ${BASE_FOLDER}
  DEPENDS generate_resources_tool ${ARGN}
)

ENDFUNCTION(GENERATE_RESOURCES)
