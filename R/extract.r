download_and_unzip <- function(zip_url, dir, remove_zip = F) {
  filename <- basename(zip_url)
  destfile <- file.path(dir, filename)

  if (dir.exists(dir)) {
    unlink(dir, recursive = T, force = T)
    message(yellow(paste("Deleted existing directory:", dir)))
  }

  if (!dir.exists(dir)) {
    dir.create(dir, recursive = T)
  }

  message(paste("Downloading file from", zip_url))
  tryCatch({
    download.file(zip_url, destfile = destfile, mode = "wb")
    message(green(paste("Downloaded file to:", destfile)))

    unzip(destfile, exdir = dir)
    message(green(paste("Unzipped contents to:", dir)))

    if (remove_zip) {
      unlink(destfile)
      message(blue(paste("Removed ZIP file:", destfile)))
    }

  }, error = function(e) {
    message(red(paste("Failed to download or unzip:", e$message)))
  })

}


