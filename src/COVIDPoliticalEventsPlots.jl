module COVIDPoliticalEventsPlots

using TSCSMethods, Dates, DataFrames, DataFramesMeta
using Parameters, Accessors
import TSCSMethods:ModelRecord
import CSV, HTTP
import TSCSMethods:mean,std
using ShiftedArrays # import ShiftedArrays:lead
import Indicators:sma
import FileIO.load
import Downloads:download
import CategoricalArrays:categorical

using COVIDPoliticalEvents

using CairoMakie
using Colors, ColorSchemes
import CairoMakie.RGB
import JLD2:load_object

depfiles = [
    "figure_utilities.jl", "figure_code.jl", "figure_code_inner_functions.jl","figure_code_combined.jl", "figure_code_supplementary.jl"
]

for x in depfiles; include(x) end

export
    # supplemental plotting
    # turnout_pl, rescheduled_pl,
    # primary_mob_pl, ga_mob_pl, rally_mob_pl, protest_mob_pl,
    # exposure_shift, protest_size_hists,
    # primary_panel, blm_panel,
    #
    # main figures
    figure3, figure4, figure5, figure6, figure7, figure8, 
    # extended figures
    pretrendfig, diagnostic, treatmentplot,
    # supplementary figures
    testingfig, rescheduled_pl, diagnostic, turnoutplot, covrob_plot,
    rally_ts_x_exposure_fig

end # module COVIDPoliticalEventsPlots
