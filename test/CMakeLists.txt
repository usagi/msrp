add_custom_target(check
    COMMAND "MSRP=${CMAKE_CURRENT_BINARY_DIR}/../src/msrp" "DIR=${CMAKE_CURRENT_SOURCE_DIR}/" ${CMAKE_CURRENT_SOURCE_DIR}/all.sh
    DEPENDS msrp
    WORKING_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}"
    )
