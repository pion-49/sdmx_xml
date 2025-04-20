#' @export

create_header <- function(sdmx = new("SDMXHeader"), xml, lite = TRUE) {
  # Check is CLass "SDMXHeader"
  if(!is(sdmx,"SDMXHeader")) { stop("Input 'sdmx' is not of Class 'SDMXHeader'.")}
  # Check is xml2 doc
  if(!is(xml,"xml_document")) { stop("Input 'xml' is not a XML docuemnt.")}
  # Check if doc already contains header
  if(length(xml2::xml_find_all(xml, xpath = "Header")) != 0) { stop("XML document already contains a header.")}
  # Check if lite is logical
  if(!is(lite, "logical")) { stop("Input 'lite' must be a logical.")}
  
  # Add header node below root
  xml2::xml_add_child(.x = xml, .value = "Header")
  
  # Add ID (character) node below header
  xml2::xml_add_child(
    .x = xml2::xml_find_first(
      x = xml,
      xpath = "Header"
      ),
    .value = "ID",
    sdmx@ID
    )
  
  # Add test (logical) node below header
  xml2::xml_add_child(
    .x = xml2::xml_find_first(
      x = xml,
      xpath = "Header"
    ),
    .value = "Test",
    sdmx@Test
  )
  
  # Add Sender (list) node below header
  xml2::xml_add_child(
    .x = xml2::xml_find_first(
      x = xml,
      xpath = "Header"
    ),
    .value = "Sender",
    id = sdmx@Sender$id,
    sdmx@Sender$en
  )
  
  # Add receiver (list) node below header
  xml2::xml_add_child(
    .x = xml2::xml_find_first(
      x = xml,
      xpath = "Header"
    ),
    .value = "Receiver",
    id = sdmx@Receiver$id,
    sdmx@Receiver$en
  )
  
  # Add Prepared (POSIXlt) node below header
  xml2::xml_add_child(
    .x = xml2::xml_find_first(
      x = xml,
      xpath = "Header"
    ),
    .value = "Prepared",
    as.character(sdmx@Prepared)
  )
  
  if(!lite) {

    # Add truncated (logical) node below header
    xml2::xml_add_child(
      .x = xml2::xml_find_first(
        x = xml,
        xpath = "Header"
      ),
      .value = "Truncated",
      sdmx@Truncated
    )
  
    # Add name (character) node below header
    xml2::xml_add_child(
      .x = xml2::xml_find_first(
        x = xml,
        xpath = "Header"
      ),
      .value = "Name",
      sdmx@Name
    )
  
    # Add Extracted (POSIXlt) node below header
    xml2::xml_add_child(
      .x = xml2::xml_find_first(
        x = xml,
        xpath = "Header"
      ),
      .value = "Extracted",
      as.character(sdmx@Extracted)
    )
  
    # Add ReportingBegin (POSIXlt) node below header
    xml2::xml_add_child(
      .x = xml2::xml_find_first(
        x = xml,
        xpath = "Header"
      ),
      .value = "ReportingBegin",
      as.character(sdmx@ReportingBegin)
    )
  
    # Add ReportingEnd (POSIXlt) node below header
    xml2::xml_add_child(
      .x = xml2::xml_find_first(
        x = xml,
        xpath = "Header"
      ),
      .value = "ReportingEnd",
      as.character(sdmx@ReportingEnd)
    )
  
    # Add Source (character) node below header
    xml2::xml_add_child(
      .x = xml2::xml_find_first(
        x = xml,
        xpath = "Header"
      ),
      .value = "Source",
      sdmx@Source
    )
  }
  
  return(xml)
}
