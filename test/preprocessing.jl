using EEG
using Base.Test
using Logging

Logging.configure(level=DEBUG)

fname = joinpath(dirname(@__FILE__), "data", "test_Hz19.5-testing.bdf")

s = read_ASSR(fname)
s = highpass_filter(s)
s = lowpass_filter(s)