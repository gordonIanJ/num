#!/bin/sh
set -euf

##
#
# Num: number utilties for mathematics and statistics.
#
# Syntax:
#
#     num [ options ] [ file ... ]
#
# Full documentation and code is available:
#
#   * http://www.numcommand.com
#   * https://github.com/numcommand/num
#
# ## Tracking
#
# Author: Joel Parker Henderson (joel@joelparkerhenderson.com)
# License: GPL, BSD, MIT
# Created: 2015-03-28
# Updated: 2015-11-29
# Version: 1.2.2
#
##

AWK=${AWK:-$(command -v gawk || command -v awk || echo "awk")}
"$AWK" -v awk="$AWK" '

## Basics
#@include "num-lint.awk"
@include "num-help.awk"
@include "num-out-err.awk"
@include "num-function.awk"
## Mathematics
@include "num-absolute-value.awk"
@include "num-sign.awk"
@include "num-increment.awk"
@include "num-round.awk"
@include "num-sum.awk"
@include "num-product.awk"
## Lists
@include "num-arr.awk"
@include "num-list.awk"
@include "num-frequency.awk"
@include "num-shift.awk"
@include "num-stack.awk"
@include "num-queue.awk"
@include "num-sort.awk"
@include "num-insertion-sort.awk"
@include "num-quicksort.awk"
@include "num-map.awk"
## Filters
@include "num-unique.awk"
## Maps
@include "num-map-increment.awk"
@include "num-map-absolute-value.awk"
@include "num-map-sign.awk"
@include "num-map-round.awk"
## Statistics
@include "num-map-normalize.awk"
@include "num-mean.awk"
@include "num-mean-absolute-deviation.awk"
@include "num-sum-of-mean-deviation.awk"
@include "num-meanest.awk"
@include "num-trimean.awk"
@include "num-trimmed-mean.awk"
@include "num-median.awk"
@include "num-mode.awk"
@include "num-variance.awk"
@include "num-skewness.awk"
@include "num-kurtosis.awk"
@include "num-standard-deviation.awk"
@include "num-coefficient-of-variance.awk"
@include "num-quartiles.awk"
## Controllers
@include "num-init.awk"
@include "num-conf.awk"
@include "num-scope.awk"
@include "num-function-manager.awk"
@include "num-print.awk"
@include "num-argv.awk"
@include "num-main.awk"

' "$@"
