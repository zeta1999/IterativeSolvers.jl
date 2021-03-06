get(ENV, "TRAVIS_OS_NAME", "")       == "linux" || exit()
get(ENV, "TRAVIS_JULIA_VERSION", "") == "1.3"   || exit()

using Coverage

cd(joinpath(dirname(@__FILE__), "..")) do
    Codecov.submit(Codecov.process_folder())
end
