#!/bin/bash

export $(xargs <.env)

./aws-release.sh