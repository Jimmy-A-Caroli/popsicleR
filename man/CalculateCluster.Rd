\name{CalculateCluster}
\alias{CalculateCluster}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{CalculateCluster
%%  ~~function to do ... ~~
}
\description{
Calculate cluster of cells based on immune markers. Clusters will be displayed across tSNE and UMAP plots.
}
\usage{
CalculateCluster(UMI, dim_pca, organism=c("human","mouse"), marker.list='none', PCA=TRUE, cluster_res=0.8, out_folder=getwd())
}


%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{UMI}{Input UMI object generated via Seurat}
  \item{dim_pca}{Number of principal component to take into account.}
  \item{organism}{Input organism to define the marker list to use. Can be human or mouse}
  \item{marker.list}{List of markers. Default is 'none' and a proprietary marker list is applied for the selected organism. User can fed a custom genelist specifying the file_name of a tab delimited file stored in the working directory.}
  \item{PCA}{If TRUE calculates the PCA. Default is TRUE}
  \item{cluster_res}{Cluster resolution. Default is 0.8. User can specify, through a vector, multiple clustering resolution to explore. When input more than one resolution, time consuming steps (e.g. Seurat::FindAllMarkers) are not performed.}
  \item{out_folder}{Output folder. Default is the working directory}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{Jimmy Caroli, Francesco Grandi}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
CalculateCluster(umi_object, 12, organism= "human", cluster_res=c(0.4, 0.6, 0.8))

CalculateCluster(umi_object, 12, organism= "human", cluster_res= 0.8)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
