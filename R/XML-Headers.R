#' @export

create_header <- function(sdmx, xml) {
  # Check is CLass "SDMXHeader"
  if(!is(sdmx,"SDMXHeader")) { stop("Input 'sdmx' is not of Class 'SDMXHeader'.")}
  # Check is xml2 doc
  if(!is(xml,"xml_document")) { stop("Input 'xml' is not a XML docuemnt.")}
  
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

  # Add truncated (logical) node below header
  xml2::xml_add_child(
    .x = xml2::xml_find_first(
      x = xml,
      xpath = "Header"
    ),
    .value = "truncated",
    sdmx@truncated
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

  # Add Sender (list) node below header
  xml2::xml_add_child(
    .x = xml2::xml_find_first(
      x = xml,
      xpath = "Header"
    ),
    .value = "Sender",
    sdmx@Sender
  )

  # Add receiver (list) node below header
  xml2::xml_add_child(
    .x = xml2::xml_find_first(
      x = xml,
      xpath = "Header"
    ),
    .value = "Receiver",
    sdmx@Receiver
  )

  # Add Prepared (POSIXlt) node below header
  xml2::xml_add_child(
    .x = xml2::xml_find_first(
      x = xml,
      xpath = "Header"
    ),
    .value = "Prepared",
    sdmx@Prepared
  )

  # Add Extracted (POSIXlt) node below header
  xml2::xml_add_child(
    .x = xml2::xml_find_first(
      x = xml,
      xpath = "Header"
    ),
    .value = "Extracted",
    sdmx@Extracted
  )

  # Add ReportingBegin (POSIXlt) node below header
  xml2::xml_add_child(
    .x = xml2::xml_find_first(
      x = xml,
      xpath = "Header"
    ),
    .value = "ReportingBegin",
    sdmx@ReportingBegin
  )

  # Add ReportingEnd (POSIXlt) node below header
  xml2::xml_add_child(
    .x = xml2::xml_find_first(
      x = xml,
      xpath = "Header"
    ),
    .value = "ReportingEnd",
    sdmx@ReportingEnd
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
  
  return(xml)
}
