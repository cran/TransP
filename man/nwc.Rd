% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NWC.R
\name{nwc}
\alias{nwc}
\title{Implements North-West Corner Algorithm to solve transportation problem}
\usage{
# Get optimized cost matrix for input matrix ex_matrix
nwc(ex_matrix)
}
\arguments{
\item{ex_matrix}{A cost matrix where last column must be the supply and last row must be the demand.
Input matrix should not have any missing values (NA), otherwise function will throw an error.}
}
\value{
A List which contrains the Cost allocation matrix and the total optimized cost.
}
\description{
This function implements North-West Corner Algorithm to solve transportation problem by optimized cost matrix and total optimized cost
}
\details{
This function takes a cost matrix (with Supply and Demand) and using North-West Corner approach gives
the cost allocation matrix as well as the calcualted optimized cost.
This function checks for degenerated problem but it can't resolve it. User need to resolve by seeing the cost allocation matrix.
}
\examples{
\dontrun{

#Input matrix where last row is the Demand and last column is the Supply
ex_matrix=data.frame(M1=c(13,10,25,17,210),M2=c(25,19,10,24,240),
                     M3=c(8,18,15,18,110),M4=c(13,5,14,13,80),M5=c(20,12,18,19,170),
                     Supply=c(430,150,100,130,810),
                     row.names = c("W1","W2","W3","W4","Demand"))

ex_matrix
         M1  M2  M3 M4  M5 Supply
W1      13  25   8 13  20    430
W2      10  19  18  5  12    150
W3      25  10  15 14  18    100
W4      17  24  18 13  19    130
Demand 210 240 110 80 170    810

nwc(ex_matrix)
$Alloc_Matrix
    M1  M2  M3 M4  M5
W1 210 220   0  0   0
W2   0  20 110 20   0
W3   0   0   0 60  40
W4   0   0   0  0 130

$Total_Cost
[1] 14720

}

}

