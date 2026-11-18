## -----------------------------------------------------------------------------
#| label: setup
library(rvtk)


## -----------------------------------------------------------------------------
VtkVersion()
CppFlags()


## ----eval = FALSE-------------------------------------------------------------
# # from the root of your package (e.g. yourpackage/)
# rvtk::use_rvtk()


## -----------------------------------------------------------------------------
c(
  "vtkIOLegacy",
  "vtkIOXML",
  "vtkIOXMLParser",
  "vtkIOCore",
  "vtkIOGeometry",
  "vtkFiltersCore",
  "vtkFiltersGeneral",
  "vtkFiltersGeometry",
  "vtkFiltersModeling",
  "vtkFiltersExtraction",
  "vtkCommonCore",
  "vtkCommonDataModel",
  "vtkCommonExecutionModel",
  "vtkCommonMath",
  "vtkCommonMisc",
  "vtkCommonSystem",
  "vtkCommonTransforms",
  "vtksys"
)


## ----eval = FALSE-------------------------------------------------------------
# rvtk::use_rvtk(
#   modules = c(
#     "vtkIOLegacy",
#     "vtkCommonCore",
#     "vtkCommonDataModel"
#   )
# )


## -----------------------------------------------------------------------------
# flags for just the I/O + core modules
LdFlags(modules = c("vtkIOLegacy", "vtkCommonCore", "vtkCommonDataModel"))


## ----eval = FALSE-------------------------------------------------------------
# # in a fresh R session, after R CMD INSTALL
# library(yourpackage)
# yourpackage::vtk_poly_data_npoints() # expect 0: a brand-new vtkPolyData has no points

