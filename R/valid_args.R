valid_args <- functions (Y = y, layers = layers, k = k, r = r, it = it, 
                         eps = eps, init = init) {

if (any(is.na(Y))) {

  stop("`Y' has missing value.")
}

if (!any(is.numeric(Y))) {

  stop("`Y' has a non-numeric element.")
}

p <- ncol(Y)
if (is.null(p)) {

  stop("The data must have more than one variable.")
}

if (!is.numeric(layers)) {

  stop("Layers can only be 1, 2, or 3.")
} 

if (!(layers %in% c(1, 2, 3))) {

  stop("Only upto three layers are allowed.")
}

if (!(length(k) == layers)) {

  stop("Length of k must be equal to layers.")
}

if (!is.numeric(k)) {

  stop("Elements of k must be numeric.")
}

if (!is.numeric(r)) {

  stop("Elements of k must be numeric.")
}

if (!(length(r) == layers)) {

  stop("Length of k must be equal to layers.")
}

if any((r[1 : (layers - 1)] - r[2 : layers]) <= 0) {

  stop("Elements of r must be in decreasing order.")
}

if (it < 1) {

  stop("Maximum number of iterations, itmax, must be greather than one.")
}

if (eps < 0) {

  stop("tol must be a greater than zero.")
}

if ((!is.null(init)) && (init != "kmeans") 
    && (init != "random") && (init != "hclass")) {

  stop("init must 'kmeans', 'random', or 'hclass'.")
}


invisible(1)
}