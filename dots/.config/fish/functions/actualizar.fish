function actualizar
    sudo pacman -Syu --noconfirm
    flatpak upgrade -y
    yay -Su
end
