# Main page for the demo dynamic recovery plan
# Copyright (C) 2016 Defenders of Wildlife, jmalcom@defenders.org

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; if not, see <http://www.gnu.org/licenses/>.


synopsis_page <- {
    tabPanel(
        title="Synopsis",
        br(),
        tabsetPanel(
            tabPanel(
                title = "Summary",
                fluidRow(
                    column(12,
                        uiOutput("cur_synopsis"),
                        span(actionButton("edit", 
                                          label = "Edit", 
                                          icon = icon("pencil-square-o")),
                             style = "float: right"
                        )
                    )
                )
            ),
            tabPanel(
                title = "Table",
                p("Insert the table")
            ),
            tabPanel(
                title = "Network" #,
                # forceNetworkOutput("act_crit_threat")
            )
        ),
        fluidRow(
            br(),
            hr()
        ),
        fluidRow(
            column(3),
            column(6,
                div(HTML(defenders_cc()), style=center_text)
            ),
            column(3)
        ),
        fluidRow(
            hr(),
            br()
        )
    )
}
