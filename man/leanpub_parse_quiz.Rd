% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/leanpub_render.R
\name{leanpub_parse_quiz}
\alias{leanpub_parse_quiz}
\alias{leanpub_parse_exercise}
\alias{leanpub_remove_quiz}
\alias{leanpub_remove_exercise}
\alias{leanpub_remove_tests}
\title{Parse Quiz from Markua Markdown File}
\usage{
leanpub_parse_quiz(md_file)

leanpub_parse_exercise(md_file)

leanpub_remove_quiz(md_file)

leanpub_remove_exercise(md_file)

leanpub_remove_tests(md_file)
}
\arguments{
\item{md_file}{Path to manuscript file}
}
\value{
A character vector of quiz
}
\description{
Parse Quiz from Markua Markdown File
}
\examples{
md_file = system.file("extdata", "00_template.md",
     package = "didactr")
if (file.exists(md_file)) {
   res = leanpub_parse_quiz(md_file)
   stopifnot(length(res) > 0)
   res = leanpub_parse_exercise(md_file)
   stopifnot(length(res) == 0)
   tfile = leanpub_remove_tests(md_file)
   res = leanpub_parse_quiz(tfile)
   stopifnot(length(res) == 0)
}
}
