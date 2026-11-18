#' @importFrom utils packageDescription
.onAttach <- function(libname, pkgname){
  pkgVersion <- packageDescription(pkgname, fields="Version")
  msg <- paste0(pkgname, " v", pkgVersion, "  ",
                "For help: https://github.com/YuLab-SMU/SVP/issues", "\n\n")

  citation <- paste0("If you use ", pkgname,
                       " in published research, please cite the paper:\n\n",
                       SVP_citations(pkgname))
  
  packageStartupMessage(paste0(strwrap(paste0(msg, citation, suppressmsg(pkgname))), collapse="\n"))
}

SVP_citations <- function(pkgname){
  paste0("S Xu, Q Wang, Y Zhou, J Li, R Wang, L Zhang, W Xie, S Wen, M Li, Z Xie, L Li, H Zhu, D Wang",
         "H Zheng, W Tang, L Zhan, B Liu, Y Liao, L Deng, K Mo, N He, Y Shao, S Guo, G Yu. ",
         "SVP Maps Spatially Variable Functional Programs and Their Coupling in Spatial Transcriptomics. ",
         "Advanced Science. 2026, doi: 10.1002/advs.78741\n\n",
         "Export the citation to BibTex by citation('", pkgname,"')\n\n")
}

suppressmsg <- function(pkgname){
  paste0("This message can be suppressed by:\n",
      "suppressPackageStartupMessages(library(", pkgname ,"))"
  )
}
