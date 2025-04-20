head = new("SDMXHeader",
           ID = "Id", 
           Test = FALSE, 
           Truncated = FALSE, 
           Name = "name",
           Sender = list(id = "SenderID", en = "sender"), 
           Receiver = list(id = "ReceiverID", en="receiver"),
           Prepared = as.POSIXlt(Sys.time()),
           Extracted = as.POSIXlt(Sys.time()),
           ReportingBegin = as.POSIXlt(Sys.time()),
           ReportingEnd = as.POSIXlt(Sys.time()),
           Source = "source"
)
