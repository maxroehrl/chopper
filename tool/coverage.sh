#!/bin/bash

pushd chopper

dart pub get

dart run coverage:format_coverage --lcov \
                                  --in=coverage \
                                  --out=coverage/coverage.lcov \
                                  --packages=.packages \
                                  --report-on=lib

curl -s https://codecov.io/bash | bash

popd