% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getSurveys.R
\name{getSurveys}
\alias{getSurveys}
\title{Retrieve a data frame of all active surveys on Qualtrics}
\usage{
getSurveys(root_url = "https://yourdatacenterid.qualtrics.com")
}
\arguments{
\item{root_url}{Base url for your institution (see \url{https://api.qualtrics.com/docs/root-url}. If you do not fill in anything, the function will use the default url. Using your institution-specific url can significantly speed up queries.)}
}
\description{
Retrieve a data frame of all active surveys on Qualtrics
}
\examples{
\dontrun{
registerApiKey("<YOUR-QUALTRICS-API-KEY>")
# Retrieve a list of surveys
surveys <- getSurveys(root_url = "https://leidenuniv.eu.qualtrics.com")
                      # URL is for my own institution.
                      # Substitute with your own institution's url
# Retrieve a single survey
mysurvey <- getSurvey(surveyID = surveys$id[6],
                      root_url = "https://leidenuniv.eu.qualtrics.com",
                      save_dir = tempdir(),
                      verbose=TRUE)
# You can use the same parameters as those found in the qualtrics API documentation
# Found here: https://api.qualtrics.com/docs/csv
mysurvey <- getSurvey(surveyID = surveys$id[6],
                      root_url = "https://leidenuniv.eu.qualtrics.com",
                      save_dir = tempdir(),
                      startDate = "2017-01-01",
                      endDate = "2017-01-31",
                      limit = 100,
                      useLabels = TRUE,
                      seenUnansweredRecode = "UNANS",
                      verbose=TRUE)
}
}
\seealso{
See \url{https://api.qualtrics.com/docs} for documentation on the Qualtrics API.
}
\author{
Jasper Ginn
}
