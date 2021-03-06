% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classes.R
\docType{class}
\name{scPred}
\alias{scPred}
\alias{scPred-class}
\title{Definition of 'scPred' class}
\description{
An S4 class to contain principal component analysis of a gene expression matrix, metadata, training, and
prediction information.
}
\section{Slots}{

\describe{
\item{\code{sva}}{Singular value decomposition performed with \code{prcomp_irlba()} function}

\item{\code{metadata}}{A dataframe with:
\itemize{
\item row names: ids matching the column names of the gene expression matrix
\item columns: associated metadata such as cell type, conditions, sample, or batch. 
}}

\item{\code{trainData}}{Training gene expression data}

\item{\code{expVar}}{Explained variance by each principoal component}

\item{\code{pVar}}{Column name from metadata to use as the variable to predict using
the informative principal components}

\item{\code{features}}{A data frame with the following information:
\itemize{
\item PC: Principal component
\item Freq: Frequency of occurencxe of the principal component over a number of random samples from the PCA matrix
\item expVar: Explained variance by the principal component
\item cumExpVar: All principal components are ranked accoriding to their frequency of ocurrence and their variance explained. 
This column contains the cumulative variance explained across the ranked principal components
}}

\item{\code{train}}{A list with all trained models using the \code{caret} package. Each model correspond to a cell type}

\item{\code{projection}}{A matrix containing the prediction data projection}

\item{\code{predictions}}{A data frame with the prediction results containing probabilities for each class}

\item{\code{pseudo}}{TRUE if a \code{log2(data + 1)} transformation was performed before performing the PCA}
}}

