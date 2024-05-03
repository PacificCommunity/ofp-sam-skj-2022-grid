library(TAF)

message("Downloading skj-2022.zip")
download(
  "https://oceanfish.spc.int/en/publications/doc_download/2114-skj-2022zip",
  destfile="skj-2022.zip", quiet=FALSE)
message("done")

message("Unzipping skj-2022.zip")
taf.unzip("skj-2022.zip")
message("done")

# Clean up grid folder
file.rename("SKJ_3_18July", "grid")
unlink("grid/executables.files.2022", recursive=TRUE)
file.remove(c("grid/grad", "grid/obj"))
