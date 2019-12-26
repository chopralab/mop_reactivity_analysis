import Random
using DecisionTree
import CSV
using DataFrames

loc = @__DIR__
include(loc * "/prepare_data.jl")
include(loc * "/bootstrap.jl")

results = bootstrap_all(train_matrix, train_res, test_matrix; runs=10000, min_samples_leaf = 2)'
results = results |> DataFrame

if size(test_matrix,2) == 6
    names!(results, [:c1, :c2, :c3, :c4, :c5, :c6, :self_score, :kappa])
else
    names!(results, [:c01, :c02, :c03, :c04, :c05, :c06, :c07, :c08, :c09, :c10, :c11, :c12, :c13, :c14, :self_score, :kappa])
end

results[:cutoff] = [0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9]
CSV.write("results.csv", results)

set_bits = [i[1] for i in (any(train_matrix; dims = 2) |> findall)]

set_bits_tr = train_matrix[set_bits, :]' |> DataFrame
set_bits_tr[:yield] = train_res

CSV.write("set_bits.csv", set_bits_tr)

set_bits_ts = test_matrix[set_bits, :]' |> DataFrame
CSV.write("set_bits_test.csv", set_bits_ts)

