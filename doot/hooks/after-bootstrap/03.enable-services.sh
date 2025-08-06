#!/bin/bash

sudo systemctl enable --now hyprsunset.service
sudo systemctl enable --now hyprpolkitagent.service
sudo systemctl enable --now hypridle.service
sudo systemctl enable --now waybar.service
