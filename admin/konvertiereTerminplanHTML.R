# Erstelle HTML der Semesterplanung

library(readODS)
library(R2HTML)

setwd("~/sciebo/DataScience2/admin/")

x <- read_ods("TerminplanWS23_24.ods",skip=3)

HTML(x, 
     file="test.html",
     Border=1,
     innerBorder=0,
     append=FALSE,
     digits=0,
     row.names=F,
     align="center")

# 
# <br>
# <table>
#     <caption></caption>
#     <thead>
#         <tr>
#             <th scope="col" style="border-width: 1px; border-style: solid; border-color: rgb(125, 159, 211);"></th>
#             <th scope="col" style="border-width: 1px; border-style: solid; border-color: rgb(125, 159, 211);"></th>
#             <th scope="col" style="border-width: 1px; border-style: solid; border-color: rgb(125, 159, 211);"></th>
#         </tr>
#     </thead>
#     <tbody>
#         <tr>
#             <td style="border-width: 1px; border-style: solid; border-color: rgb(125, 159, 211);"></td>
#             <td style="border-width: 1px; border-style: solid; border-color: rgb(125, 159, 211);"></td>
#             <td style="border-width: 1px; border-style: solid; border-color: rgb(125, 159, 211);"></td>
#         </tr>
#         <tr>
#             <td style="border-width: 1px; border-style: solid; border-color: rgb(125, 159, 211);"></td>
#             <td style="border-width: 1px; border-style: solid; border-color: rgb(125, 159, 211);"></td>
#             <td style="border-width: 1px; border-style: solid; border-color: rgb(125, 159, 211);"></td>
#         </tr>
#     </tbody>
# </table>
# <br>